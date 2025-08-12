#define CASE(a, b, c)                                                          \
  case a:                                                                      \
    buffer[0] = b;                                                             \
    buffer[2] = c;                                                             \
    break;

// USB keyboard codes
#define USB_HID_MODIFIER_LEFT_CTRL 0x01
#define USB_HID_MODIFIER_LEFT_SHIFT 0x02
#define USB_HID_MODIFIER_LEFT_ALT 0x04
#define USB_HID_MODIFIER_RIGHT_CTRL 0x10
#define USB_HID_MODIFIER_RIGHT_SHIFT 0x20
#define USB_HID_MODIFIER_RIGHT_ALT 0x40

#define USB_HID_SPACE 0x2C
#define USB_HID_DOT 0x37
#define USB_HID_NEWLINE 0x28
#define USB_HID_FSLASH 0x38
#define USB_HID_BSLASH 0x31
#define USB_HID_COMMA 0x36
#define USB_HID_DOT 0x37

const unsigned char keyboardReportMap[] = {
    // 7 bytes input (modifiers, resrvd, keys*5), 1 byte output
    0x05,
    0x01, // Usage Page (Generic Desktop Ctrls)
    0x09,
    0x06, // Usage (Keyboard)
    0xA1,
    0x01, // Collection (Application)
    0x85,
    0x01, //   Report ID (1)
    0x05,
    0x07, //   Usage Page (Kbrd/Keypad)
    0x19,
    0xE0, //   Usage Minimum (0xE0)
    0x29,
    0xE7, //   Usage Maximum (0xE7)
    0x15,
    0x00, //   Logical Minimum (0)
    0x25,
    0x01, //   Logical Maximum (1)
    0x75,
    0x01, //   Report Size (1)
    0x95,
    0x08, //   Report Count (8)
    0x81,
    0x02, //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0x95,
    0x01, //   Report Count (1)
    0x75,
    0x08, //   Report Size (8)
    0x81,
    0x03, //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0x95,
    0x05, //   Report Count (5)
    0x75,
    0x01, //   Report Size (1)
    0x05,
    0x08, //   Usage Page (LEDs)
    0x19,
    0x01, //   Usage Minimum (Num Lock)
    0x29,
    0x05, //   Usage Maximum (Kana)
    0x91,
    0x02, //   Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position,Non-volatile)
    0x95,
    0x01, //   Report Count (1)
    0x75,
    0x03, //   Report Size (3)
    0x91,
    0x03, //   Output (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position,Non-volatile)
    0x95,
    0x05, //   Report Count (5)
    0x75,
    0x08, //   Report Size (8)
    0x15,
    0x00, //   Logical Minimum (0)
    0x25,
    0x65, //   Logical Maximum (101)
    0x05,
    0x07, //   Usage Page (Kbrd/Keypad)
    0x19,
    0x00, //   Usage Minimum (0x00)
    0x29,
    0x65, //   Usage Maximum (0x65)
    0x81,
    0x00, //   Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0xC0, // End Collection

    // 65 bytes
};


