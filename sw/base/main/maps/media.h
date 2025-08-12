static local_param_t s_ble_hid_param = {0};
const unsigned char mediaReportMap[] = {
    0x05,
    0x0C, // Usage Page (Consumer)
    0x09,
    0x01, // Usage (Consumer Control)
    0xA1,
    0x01, // Collection (Application)
    0x85,
    0x03, //   Report ID (3)
    0x09,
    0x02, //   Usage (Numeric Key Pad)
    0xA1,
    0x02, //   Collection (Logical)
    0x05,
    0x09, //     Usage Page (Button)
    0x19,
    0x01, //     Usage Minimum (0x01)
    0x29,
    0x0A, //     Usage Maximum (0x0A)
    0x15,
    0x01, //     Logical Minimum (1)
    0x25,
    0x0A, //     Logical Maximum (10)
    0x75,
    0x04, //     Report Size (4)
    0x95,
    0x01, //     Report Count (1)
    0x81,
    0x00, //     Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null
          //     Position)
    0xC0, //   End Collection
    0x05,
    0x0C, //   Usage Page (Consumer)
    0x09,
    0x86, //   Usage (Channel)
    0x15,
    0xFF, //   Logical Minimum (-1)
    0x25,
    0x01, //   Logical Maximum (1)
    0x75,
    0x02, //   Report Size (2)
    0x95,
    0x01, //   Report Count (1)
    0x81,
    0x46, //   Input (Data,Var,Rel,No Wrap,Linear,Preferred State,Null State)
    0x09,
    0xE9, //   Usage (Volume Increment)
    0x09,
    0xEA, //   Usage (Volume Decrement)
    0x15,
    0x00, //   Logical Minimum (0)
    0x75,
    0x01, //   Report Size (1)
    0x95,
    0x02, //   Report Count (2)
    0x81,
    0x02, //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0x09,
    0xE2, //   Usage (Mute)
    0x09,
    0x30, //   Usage (Power)
    0x09,
    0x83, //   Usage (Recall Last)
    0x09,
    0x81, //   Usage (Assign Selection)
    0x09,
    0xB0, //   Usage (Play)
    0x09,
    0xB1, //   Usage (Pause)
    0x09,
    0xB2, //   Usage (Record)
    0x09,
    0xB3, //   Usage (Fast Forward)
    0x09,
    0xB4, //   Usage (Rewind)
    0x09,
    0xB5, //   Usage (Scan Next Track)
    0x09,
    0xB6, //   Usage (Scan Previous Track)
    0x09,
    0xB7, //   Usage (Stop)
    0x15,
    0x01, //   Logical Minimum (1)
    0x25,
    0x0C, //   Logical Maximum (12)
    0x75,
    0x04, //   Report Size (4)
    0x95,
    0x01, //   Report Count (1)
    0x81,
    0x00, //   Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0x09,
    0x80, //   Usage (Selection)
    0xA1,
    0x02, //   Collection (Logical)
    0x05,
    0x09, //     Usage Page (Button)
    0x19,
    0x01, //     Usage Minimum (0x01)
    0x29,
    0x03, //     Usage Maximum (0x03)
    0x15,
    0x01, //     Logical Minimum (1)
    0x25,
    0x03, //     Logical Maximum (3)
    0x75,
    0x02, //     Report Size (2)
    0x81,
    0x00, //     Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null
          //     Position)
    0xC0, //   End Collection
    0x81,
    0x03, //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null
          //   Position)
    0xC0, // End Collection
};
