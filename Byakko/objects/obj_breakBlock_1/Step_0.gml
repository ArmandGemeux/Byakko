/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if(obj_player.dashing){
		instance_deactivate_object(myBlock);	
	}
	else {
		instance_activate_object(myBlock);	
	}
}