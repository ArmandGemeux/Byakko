/// @description Insert description here
// You can write your code in this editor

currentMode = worldMode.yin;

pause = false;

pauseIndex = 0;
pauseIndexMax = 3;

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_vaxis = gp_axislv;
pad_valid = gp_face1;

pad_released = false;

key_up = vk_up;
key_down = vk_down;
key_valid = vk_space;