/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(key_down) || (gamepad_axis_value(pad_index,pad_vaxis)>0.5 && pad_released ) ){
	index++;
	if(index >= maxIndex){
		index = 0;	
	}
	pad_released = false;	
	audio_play_sound(snd_UISelect,1,false);
}

if(keyboard_check_pressed(key_up) || (gamepad_axis_value(pad_index,pad_vaxis)<-0.5 && pad_released ) ){
	index--;
	if(index <0){
		index = maxIndex-1;	
	}
	pad_released = false;	
	audio_play_sound(snd_UISelect,1,false);
}

if(gamepad_axis_value(pad_index,pad_vaxis)>-0.5 && gamepad_axis_value(pad_index,pad_vaxis)<0.5){
	pad_released = true;
}

///////VALIDATION

if(keyboard_check_pressed(key_valid) || gamepad_button_check_pressed(pad_index,pad_valid)){
	switch(index){
		case 0: global.dash = false; global.doubleJump = false; global.float = false; room_goto_next(); break;
		case 1: game_end();
	}
}