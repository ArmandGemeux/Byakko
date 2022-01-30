/// @description Insert description here
// You can write your code in this editor

global.doubleJump = false;
global.float = false;
global.dash = false;

global.tempDoubleJump = false;
global.tempFloat = false;
global.tempDash = false;

global.nextRoom = rm_stageSelect;

enum worldMode {
	yin,
	yang
}

room_goto_next();