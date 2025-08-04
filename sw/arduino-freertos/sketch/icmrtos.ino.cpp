#include <Arduino.h>
#line 1 "/home/m/.arduino15/RemoteSketchbook/ArduinoCloud/12977596/icmrtos/icmrtos.ino"
/* Basic Multi Threading Arduino Example
   This example code is in the Public Domain (or CC0 licensed, at your option.)
   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
// Please read file README.md in the folder containing this example.
#include <SPI.h>
#include <ICM20948_WE.h>
#define ESP true

#define CS_PIN 5   // Chip Select Pin

#define MOSI_PIN 23 
#define MISO_PIN 19 
#define SCK_PIN 18
#define spi true

#if CONFIG_FREERTOS_UNICORE
#define TASK_RUNNING_CORE 0
#else
#define TASK_RUNNING_CORE 1
#endif

#define ANALOG_INPUT_PIN 14

#ifndef LED_BUILTIN
#define LED_BUILTIN 2  // Specify the on which is your LED
#endif

ICM20948_WE myIMU = ICM20948_WE(&SPI, CS_PIN, spi);

// Define two tasks for Blink & AnalogRead.

void TaskBlink(void *pvParameters);

void TaskIMURead(void *pvParameters);
  // You can (don't have to) use this to be able to manipulate a task from somewhere else.
TaskHandle_t imu_read_task_handle; 
// The setup function runs once when you press reset or power on the board.
#line 41 "/home/m/.arduino15/RemoteSketchbook/ArduinoCloud/12977596/icmrtos/icmrtos.ino"
void setup();
#line 75 "/home/m/.arduino15/RemoteSketchbook/ArduinoCloud/12977596/icmrtos/icmrtos.ino"
void loop();
#line 41 "/home/m/.arduino15/RemoteSketchbook/ArduinoCloud/12977596/icmrtos/icmrtos.ino"
void setup() {
  // Initialize serial communication at 115200 bits per second:
  Serial.begin(115200);
  // Set up two tasks to run independently.
  uint32_t blink_delay = 1000;  // Delay between changing state on LED pin
  xTaskCreate(
    TaskBlink, "Task Blink"  // A name just for humans
    ,
    2048  // The stack size can be checked by calling `uxHighWaterMark = uxTaskGetStackHighWaterMark(NULL);`
    ,
    (void *)&blink_delay  // Task parameter which can modify the task behavior. This must be passed as pointer to void.
    ,
    3 // Priority
    ,
    NULL  // Task handle is not used here - simply pass NULL
  );
  xTaskCreate(
    TaskIMURead, "Task IMU Init"  // A name just for humans
    ,
    2048  // The stack size can be checked by calling `uxHighWaterMark = uxTaskGetStackHighWaterMark(NULL);`
    ,
    NULL // Task parameter which can modify the task behavior. This must be passed as pointer to void.
    ,
    2  // Priority
    ,
    &imu_read_task_handle  // Task handle is not used here - simply pass NULL
  );
  // This variant of task creation can also specify on which core it will be run (only relevant for multi-core ESPs)
 

  Serial.printf("Basic Multi Threading Arduino Example\n");
  // Now the task scheduler, which takes over control of scheduling individual tasks, is automatically started.
}

void loop() {
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
    delay(blink_delay);
    digitalWrite(LED_BUILTIN, LOW);  // turn the LED off by making the voltage LOW
    delay(blink_delay);
  }
}


void TaskIMURead(void *pvParameters) {  // This is a task.
  (void)pvParameters;
  // Check if the given analog pin is usable - if not - delete this task
 
  if(!myIMU.init()){
    Serial.println("ICM20948 does not respond");
  }
  else{
    Serial.println("ICM20948 is connected");
  }

  if(!myIMU.initMagnetometer()){
    Serial.println("Magnetometer does not respond");
  }
  else{
    Serial.println("Magnetometer is connected");
  }

  myIMU.setAccDLPF(ICM20948_DLPF_4);    
  myIMU.setGyrSampleRateDivider(10);
  myIMU.setTempDLPF(ICM20948_DLPF_4);
  myIMU.setMagOpMode(AK09916_CONT_MODE_20HZ);

  
  xyzFloat gValue; 
  xyzFloat gyr; 
  xyzFloat magValue;

  for (;;) {
    // read the input on analog pin:
    myIMU.readSensor();
    myIMU.getGValues(&gValue);
    myIMU.getGyrValues(&gyr);
    myIMU.getMagValues(&magValue);
    float temp = myIMU.getTemperature();
    float resultantG = myIMU.getResultantG(&gValue);
  //Serial.println("Acceleration in g (x,y,z):");
    Serial.print("acc-x:");
    Serial.println(gValue.x);
    Serial.print("acc-y:");
    Serial.println(gValue.y);
    Serial.print("acc-z:");
    Serial.println(gValue.z);
 
    Serial.print("gyr-x:");
    Serial.println(gyr.x);
    Serial.print("gyr-y:");
    Serial.println(gyr.y); 
    Serial.print("gyr-z:");
    Serial.println(gyr.z);

    //Serial.println("Magnetometer Data in µTesla: ");
    Serial.print("mag-x:");
    Serial.println(magValue.x);
    Serial.print("mag-y:");
    Serial.println(magValue.y);
    Serial.print("mag-z:");
    Serial.println(magValue.z);
  
 
    delay(100);  // 100ms delay
  }
}
