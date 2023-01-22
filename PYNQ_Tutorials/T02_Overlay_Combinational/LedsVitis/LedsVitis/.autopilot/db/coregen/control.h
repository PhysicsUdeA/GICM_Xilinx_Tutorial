// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of led_reg
//        bit 31~0 - led_reg[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of sw_reg
//        bit 31~0 - sw_reg[31:0] (Read)
// 0x1c : Control signal of sw_reg
//        bit 0  - sw_reg_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_LED_REG_DATA 0x10
#define CONTROL_BITS_LED_REG_DATA 32
#define CONTROL_ADDR_SW_REG_DATA  0x18
#define CONTROL_BITS_SW_REG_DATA  32
#define CONTROL_ADDR_SW_REG_CTRL  0x1c
