/// @description Insert description here
// You can write your code in this editor
index = 0;

global.tempDash = false;
global.tempDoubleJump = false;
global.tempFloat = false;

if(!audio_is_playing(snd_MainMenuTheme)){
	audio_stop_sound(global.music);
	global.music = snd_MainMenuTheme;
	audio_play_sound(global.music,1,true);
	audio_sound_gain(global.music,0.5,0);
}

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_haxis = gp_axislh;
pad_vaxis = gp_axislv;
pad_valid = gp_face1;
pad_cancel = gp_face2;

pad_released = false;

key_up = vk_up;
key_down = vk_down;
key_right = vk_right;
key_valid = vk_space;
key_cancel = vk_escape;