/// @description Insert description here
// You can write your code in this editor

global.doubleJump = false;
global.float = false;
global.dash = false;

global.tempDoubleJump = false;
global.tempFloat = false;
global.tempDash = false;

global.nextRoom = rm_stageSelect;

global.music = snd_MainMenuTheme;
audio_play_sound(global.music,1,true);
audio_sound_gain(global.music,0.5,0);

enum worldMode {
	yin,
	yang
}

room_goto_next();