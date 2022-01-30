/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(key_up) || gamepad_axis_value(pad_index,pad_vaxis)< -0.5){
	if(index != 1){
		index = 1;	
	}
}

if(keyboard_check_pressed(key_right) || gamepad_axis_value(pad_index,pad_haxis)> 0.5){
	if(index != 2){
		index = 2;	
	}
}

if(keyboard_check_pressed(key_down) || gamepad_axis_value(pad_index,pad_vaxis)> 0.5){
	if(index != 3){
		index = 3;	
	}
}

if(keyboard_check_pressed(key_valid) || gamepad_button_check_pressed(pad_index,pad_valid)){
	audio_stop_sound(global.music);
	switch(index){
		case 1: global.tempDoubleJump = true; global.nextRoom = rm_turtleStart; global.music = snd_NorthTheme; break;
		case 2: global.tempDash = true; global.nextRoom = rm_dragonStart; global.music = snd_EastTheme; break;
		case 3: global.tempFloat = true; global.nextRoom = rm_phoenixStart; global.music = snd_SouthTheme; break;
	}

	audio_play_sound(global.music,1,true);
	audio_sound_gain(global.music,0.5,0);
	room_goto(rm_transition);
}