/// @description Insert description here
// You can write your code in this editor

dialog = "gg bro you win!";

otherSprite = s_turtle;

dialogIndex = 0;
dialogSpeed = 0.25;

switch(room){
	case rm_turtleEnd: global.doubleJump = true; otherSprite = s_turtle; break;
	case rm_dragonEnd: global.dash = true; otherSprite = s_dragon; break;
	case rm_phoenixEnd: global.float = true; otherSprite = s_phoenix;break;
}

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_valid = gp_face1;

key_valid = vk_space;