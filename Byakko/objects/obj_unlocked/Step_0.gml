/// @description Insert description here
// You can write your code in this editor

if(dialogIndex < string_length(dialog)){
	dialogIndex += dialogSpeed;	
}

if(keyboard_check_pressed(key_valid) || gamepad_button_check_pressed(pad_index,pad_valid)){
	room_goto(rm_stageSelect);	
}