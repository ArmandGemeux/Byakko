/// @description Insert description here
// You can write your code in this editor

switch(global.nextRoom){
	case rm_turtleStart:
		name = "Xuanwu";
		title = "Tortue serpent noire";
		dialog = "S'entrainer au passage des ravins il y a onde porteuse / Xi Kan you fu";
		skill = "Sautez en l'air pour bondir une nouvelle fois"; 
		snd = snd_SEntrainerAuPassageDesRavins;
		break;
	case rm_dragonStart:
		name = "Qinlong";
		title = "Dragon azur";
		dialog = "Elan Créatif / Qian";
		skill = "Appuyez sur B pour foncer et détruire les bambous"; 
		snd = snd_ElanCreatif;
		break;
	case rm_phoenixStart:
		name = "Zhuque";
		title = "Phénix";
		dialog = "Stabiliser le dos sans saisir le corps / Gen qi bei bu huo qi shen";
		skill = "Maintenez le saut pour planner"; 
		snd = snd_StabiliserLeDos;
		break;
	case rm_turtleEnd:
		name = "Xuanwu";
		title = "Tortue serpent noire";
		dialog = "Agir amène à se surpasser / xong you shang";
		skill = "Sautez en l'air pour bondir une nouvelle fois"; 
		snd = snd_AgirSeSurpasser;
		break;
	case rm_dragonEnd:
		name = "Qinlong";
		title = "Dragon azur";
		dialog = "Ténacité profitable / li zhen";
		skill = "Appuyez sur B pour foncer et détruire les bambous"; 
		snd = snd_TenaciteProfitable;
		break;
	case rm_phoenixEnd:
		name = "Zhuque";
		title = "Phénix";
		dialog = "Absence de faute / wu jiu";
		skill = "Maintenez le saut pour planner"; 
		snd = snd_AbsenceDeFaute;
		break;
	case rm_dragonSecond:
		name = "Qinlong";
		title = "Dragon azur";
		dialog = "Fondamentalement favorisant / yuan heng";
		skill = "Appuyez sur B pour foncer et détruire les bambous"; 
		snd = snd_Yang;
		break;
	case rm_turtleSecond:
		name = "Xuanwu";
		title = "Tortue serpent noire";
		dialog = "Unifier le coeur favorisant / wei xin heng";
		skill = "Sautez en l'air pour bondir une nouvelle fois"; 
		snd = snd_UnifierLeCoeur;
		break;
	/*case rm_phoenixSecond:
		name = "Zhuque";
		title = "Phénix";
		dialog = "Agir à la cour sans voir personne – xing qi ting bu jian qi ren";
		skill = "Maintenez le saut pour planner"; 
		snd = snd_AgirALaCour;
		break;*/
	default:
		name = "Jean-Bob";
		title = "Marmotte beige verdatre";
		dialog = "GG bro t'assure!";
		skill = "Git gud bro"; 
		snd = snd_Yang;
		break;
}

dialogIndex = 0;
dialogSpeed = 0.25;

playerPos = -120;
playerSpeed = 8;
subim = 0;

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_valid = gp_face1;

key_valid = vk_space;

audio_play_sound(snd,1,false);