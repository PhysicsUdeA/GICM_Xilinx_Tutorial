void ledsPrj(bool sw, int led_reg, int &sw_reg, bool &led) {

//	int sw_reg;
//	int led_reg;

#pragma HLS INTERFACE ap_none port = led
#pragma HLS INTERFACE ap_none port = sw
#pragma HLS INTERFACE s_axilite port = sw_reg
#pragma HLS INTERFACE s_axilite port = led_reg
#pragma HLS INTERFACE ap_ctrl_none port = return

	sw_reg = sw;
	led_reg = sw_reg;
	led = led_reg;

}


//void swRead(bool sw, int &sw_reg){
//
//#pragma HLS INTERFACE ap_none port = sw
//#pragma HLS INTERFACE s_axilite port = sw_reg
//#pragma HLS INTERFACE ap_ctrl_none port = return
//
//	sw_reg = sw;
//}
//
//void ledWrite(int led_reg, bool &led){
//
//#pragma HLS INTERFACE ap_none port = led
//#pragma HLS INTERFACE s_axilite port = led_reg
//#pragma HLS INTERFACE ap_ctrl_none port = return
//
//	led = led_reg;
//}
