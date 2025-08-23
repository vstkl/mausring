/* Basic Multi Threading Arduino Example
   This example code is in the Public Domain (or CC0 licensed, at your option.)
   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
// Please read file README.md in the folder containing this example.
#include <SPI.h>
#include <Arduino.h>
#include <BleGamepad.h>
#include <ICM20948_WE.h>

#define ESP true
#define DEBUG false
#define GAMEPAD_MAX 32767
#define CS_PIN 5  // Chip Select Pin

#define MOSI_PIN 23
#define MISO_PIN 19
#define SCK_PIN 18
#define spi true

#define BTN_L 25
#define BTN_R 26

#if CONFIG_FREERTOS_UNICORE
#define TASK_RUNNING_CORE 0
#else
#define TASK_RUNNING_CORE 1
#endif

#define ANALOG_INPUT_PIN 14

#ifndef LED_BUILTIN
#define LED_BUILTIN 2  // Specify the on which is your LED
#endif



BleGamepad bleGamepad;

BleGamepadConfiguration bleGamepadConfig;

ICM20948_WE myIMU = ICM20948_WE(&SPI, CS_PIN, spi);

// Define two tasks for Blink & AnalogRead.

void TaskBlink(void *pvParameters);
void TaskIMURead(void *pvParameters);
void TaskHIDMouse(void *pvParameters);
void TaskBtn(void *pvParameters);
void TaskInit (void *pvParameters);

// You can (don't have to) use this to be able to manipulate a task from somewhere else.
TaskHandle_t imu_read_task_handle;
TaskHandle_t hid_task_handle;
TaskHandle_t btn_task_handle;
TaskHandle_t init_task_handle;
// The setup function runs once when you press reset or power on the board.
void setup() {


  // Initialize serial communication at 115200 bits per second:
  Serial.begin(115200);
  // Set up two tasks to run independently.
  uint32_t blink_delay = 1000;  // Delay between changing state on LED pin
  uint32_t imu_delay = 500;
  uint32_t btn_delay = 500;
  xTaskCreate(
      TaskInit,  "Init all",   2048,   NULL,   5,    &init_task_handle
  );
  xTaskCreate(
      TaskBlink,  "Task Blink", 2048,   (void *)&blink_delay,   3,    NULL);
  // xTaskCreate( xTaskBtn, "Task Btn", 2048, (void *)&btn_delay, 1, &btn_task_handle);
  //  xTaskCreate(  TaskHIDMouse, "Task HID Mouse", 4096, NULL, 2, &hid_task_handle);

  xTaskCreate(    TaskIMURead, "Task IMU Init", 2048, (void *)&imu_delay, 2, &imu_read_task_handle);

  // This variant of task creation can also specify on which core it will be run (only relevant for multi-core ESPs)
}

void loop() {
  // Wait for init task to finish
  if (init_task_handle != NULL) {  // Make sure that the task actually exists
    delay(10000);
    vTaskDelete(init_task_handle);  // Delete task
    init_task_handle = NULL;        // prevent calling vTaskDelete on non-existing task
    Serial.printf("Init Task done\n");
  }
  /*
  if (imu_read_task_handle != NULL) {  // Make sure that the task actually exists
    delay(10000);
    vTaskDelete(imu_read_task_handle);  // Delete task
    imu_read_task_handle = NULL;        // prevent calling vTaskDelete on non-existing task
    Serial.printf("Read example done\n");
  }
  */
  
}

/*--------------------------------------------------*/
/*---------------------- Tasks ---------------------*/
/*--------------------------------------------------*/

void TaskBlink(void *pvParameters) {  // This is a task.
  uint32_t blink_delay = *((uint32_t *)pvParameters);


  const TickType_t v_blink_delay = pdMS_TO_TICKS(blink_delay);

  /*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.

  If you want to know what pin the on-board LED is connected to on your ESP32 model, check
  the Technical Specs of your board.
*/

  // initialize digital LED_BUILTIN on pin 13 as an output.
  pinMode(LED_BUILTIN, OUTPUT);

  for (;;) {                          // A Task shall never return or exit.
    digitalWrite(LED_BUILTIN, HIGH);  // turn the LED on (HIGH is the voltage level)
    // arduino-esp32 has FreeRTOS configured to have a tick-rate of 1000Hz and portTICK_PERIOD_MS
    // refers to how many milliseconds the period between each ticks is, ie. 1ms.
    vTaskDelay(v_blink_delay);
    digitalWrite(LED_BUILTIN, LOW);  // turn the LED off by making the voltage LOW
    vTaskDelay(v_blink_delay);
  }
}
void xTaskBtn(void *pvParameters) {  // This is a task.
  uint32_t btn_delay = *((uint32_t *)pvParameters);

  const TickType_t v_btn_delay = pdMS_TO_TICKS(btn_delay);



  // initialize digital LED_BUILTIN on pin 13 as an output.
  pinMode(BTN_L, INPUT);
  pinMode(BTN_R, INPUT);
  int u8_btn_l_status = LOW;
  int u8_btn_r_status = LOW;

  vTaskDelay(v_btn_delay);


  for (;;) {  // A Task shall never return or exit.
    u8_btn_l_status = digitalRead(BTN_L);
    u8_btn_r_status = digitalRead(BTN_R);
    /*
    if (!u8_btn_l_status == HIGH && !u8_btn_r_status == HIGH) {
      vTaskDelay(v_blink_delay); 
    }
    */
    if (u8_btn_l_status == HIGH) {
      Serial.println("Btn Left high");

      vTaskDelay(v_btn_delay);
      u8_btn_l_status = LOW;
    }
    if (u8_btn_r_status == HIGH) {
      Serial.println("Btn Right high");

      vTaskDelay(v_btn_delay);
      u8_btn_r_status = LOW;
    }

    vTaskDelay(v_btn_delay);
  }


  
}
void TaskInit (void *pvParameters) {

  (void)pvParameters;

  const TickType_t v_init_delay = pdMS_TO_TICKS(100);

  bleGamepadConfig.setAutoReport(false);  // This is true by default
  bleGamepadConfig.setButtonCount(2);
  bleGamepadConfig.setHatSwitchCount(2);
  bleGamepad.begin(&bleGamepadConfig);  // Creates a gamepad with 128 buttons, 2 hat switches and x, y, z, rZ, rX, rY and 2 sliders (no simulation controls enabled by default)
  
  if (!myIMU.init()) {
    Serial.println("ICM20948 does not respond");
  } else {
    Serial.println("ICM20948 is connected");
  }

  if (!myIMU.initMagnetometer()) {
    Serial.println("Magnetometer does not respond");
  } else {
    Serial.println("Magnetometer is connected");
  }

  myIMU.setAccDLPF(ICM20948_DLPF_4);
  myIMU.setGyrSampleRateDivider(10);
  myIMU.setTempDLPF(ICM20948_DLPF_4);
  myIMU.setMagOpMode(AK09916_CONT_MODE_20HZ);

  for (;;) 
  {
    vTaskDelay(v_init_delay);
  }
  
}
void TaskHIDMouse(void *pvParameters) {
  (void)pvParameters;


  //Serial.println("Starting BLE work!");


  for (;;) {

    if (bleGamepad.isConnected()) {
      /*
      Serial.println("Press buttons 1, 32, 64 and 128. Set hat 1 to down right and hat 2 to up left");
      /*
          // Press buttons 5, 32, 64 and 128
        bleGamepad.press(BUTTON_5);
        bleGamepad.press(BUTTON_64);

        // Move all axes to max.
        bleGamepad.setLeftThumb(32767, 32767);   // or bleGamepad.setX(32767); and bleGamepad.setY(32767);
        bleGamepad.setRightThumb(32767, 32767);  // or bleGamepad.setZ(32767); and bleGamepad.setRZ(32767);
        bleGamepad.setLeftTrigger(32767);        // or bleGamepad.setRX(32767);
        bleGamepad.setRightTrigger(32767);       // or bleGamepad.setRY(32767);
        bleGamepad.setSlider1(32767);
        bleGamepad.setSlider2(32767);

        // Set hat 1 to down right and hat 2 to up left (hats are otherwise centered by default)
        bleGamepad.setHat1(DPAD_DOWN_RIGHT);  // or bleGamepad.setHat1(HAT_DOWN_RIGHT);
        bleGamepad.setHat2(DPAD_UP_LEFT);     // or bleGamepad.setHat2(HAT_UP_LEFT);
        // Or bleGamepad.setHats(DPAD_DOWN_RIGHT, DPAD_UP_LEFT);

        // Send the gamepad report
        bleGamepad.sendReport();
        delay(500);

        Serial.println("Release button 5 and 64. Move all axes to min. Set hat 1 and 2 to centred.");
        bleGamepad.release(BUTTON_5);
        bleGamepad.release(BUTTON_64);
        bleGamepad.setAxes(0, 0, 0, 0, 0, 0, 0, 0);
        bleGamepad.setHats(DPAD_CENTERED, HAT_CENTERED);
        
        bleGamepad.sendReport();
        
        */


        delay(500);
        
    } else {
      delay(1000);
    }
  }

}

void TaskIMURead(void *pvParameters) {  // This is a task.
  (void)pvParameters;
  // Check if the given analog pin is usable - if not - delete this task
  uint32_t imu_delay = *((uint32_t *)pvParameters);

    

  const TickType_t v_imu_delay = pdMS_TO_TICKS(10);

 

  xyzFloat gValue;
  xyzFloat gyr;
  xyzFloat magValue;
  int cx, cy = 0;

  vTaskDelay(v_imu_delay*16);

  for (;;) {
    // read the input on analog pin:
    myIMU.readSensor();
    myIMU.getGValues(&gValue);
    myIMU.getGyrValues(&gyr);
    myIMU.getMagValues(&magValue);
    float temp = myIMU.getTemperature();
    float resultantG = myIMU.getResultantG(&gValue);
    //Serial.println("Acceleration in g (x,y,z):");
    //if (gValue.x > 0 && gValue.y > 0) {
      cx = gValue.x * GAMEPAD_MAX;
      cy = gValue.y * GAMEPAD_MAX;

      if(DEBUG == true){
        Serial.println("Sending gamepad info:");
      }
      bleGamepad.setLeftThumb(cx, cy);
      // Send the gamepad report
      bleGamepad.sendReport();
    //}
    if (DEBUG == true) {


      Serial.print("acc-x:");
      Serial.print(gValue.x);
      Serial.print(",acc-y:");
      Serial.print(gValue.y);
      Serial.print(",acc-z:");
      Serial.println(gValue.z);

      Serial.print("gyr-x:");
      Serial.print(gyr.x);
      Serial.print(",gyr-y:");
      Serial.print(gyr.y);
      Serial.print(",gyr-z:");
      Serial.println(gyr.z);

      //Serial.println("Magnetometer Data in µTesla: ");
      Serial.print("mag-x:");
      Serial.print(magValue.x);
      Serial.print(",mag-y:");
      Serial.print(magValue.y);
      Serial.print(",mag-z:");
      Serial.println(magValue.z);
    }

    vTaskDelay(v_imu_delay);
  }
  
}
