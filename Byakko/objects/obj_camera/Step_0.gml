/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
	currentMode = obj_player.currentMode;
}

if(pause){
	if(keyboard_check_pressed(key_down) || (gamepad_axis_value(pad_index,pad_vaxis)>0.5 && pad_released ) ){
		pauseIndex++;
		if(pauseIndex >= pauseIndexMax){
			pauseIndex = 0;	
		}
		pad_released = false;	
	}

	if(keyboard_check_pressed(key_up) || (gamepad_axis_value(pad_index,pad_vaxis)<-0.5 && pad_released ) ){
		pauseIndex--;
		if(pauseIndex <0){
			pauseIndex = pauseIndexMax-1;	
		}
		pad_released = false;	
	}

	if(gamepad_axis_value(pad_index,pad_vaxis)>-0.5 && gamepad_axis_value(pad_index,pad_vaxis)<0.5){
		pad_released = true;
	}

	///////VALIDATION

	if(keyboard_check_pressed(key_valid) || gamepad_button_check_pressed(pad_index,pad_valid)){
		switch(pauseIndex){
			case 0: pause = false; obj_player.active = true; break;
			case 1: room_goto(rm_stageSelect); break;
			case 2: room_goto(rm_title); break;
		}
	}
}
else {
	pauseIndex = 0;	
}