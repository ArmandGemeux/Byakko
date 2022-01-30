/// @description Insert description here
// You can write your code in this editor

switch(global.nextRoom){
	case rm_turtleStart:
		name = "Xuanwu";
		title = "Tortue serpent noire";
		dialog = "S'entrainer au passage des ravins il y a onde porteuse / Xi Kan you fu";
		skill = "Sautez en l'air pour bondir une nouvelle fois"; 
		break;
	case rm_dragonStart:
		name = "Qinlong";
		title = "Dragon azur";
		dialog = "Elan Créatif / Qian";
		skill = "Appuyez sur B pour foncer et détruire les bambous"; 
		break;
	case rm_phoenixStart:
		name = "Zhuque";
		title = "Phénix";
		dialog = "Stabiliser le dos sans saisir le corps / Gen qi bei bu huo qi shen";
		skill = "Maintenez le saut pour planner"; 
		break;
	case rm_dragonEnd: case rm_turtleEnd: case rm_phoenixEnd:
		room_goto(global.nextRoom);
		break;
	default:
		name = "Jean-Bob";
		title = "Marmotte beige verdatre";
		dialog = "GG bro t'assure!";
		skill = "Git gud bro"; 
		break;
}

dialogIndex = 0;
dialogSpeed = 0.25;

playerPos = -120;
playerSpeed = 8;

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_valid = gp_face1;

key_valid = vk_space;