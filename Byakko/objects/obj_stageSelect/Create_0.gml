/// @description Insert description here
// You can write your code in this editor
index = 0;

global.tempDash = false;
global.tempDoubleJump = false;
global.tempFloat = false;

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_haxis = gp_axislh;
pad_vaxis = gp_axislv;
pad_valid = gp_face1;

pad_released = false;

key_up = vk_up;
key_down = vk_down;
key_right = vk_right;
key_valid = vk_space;