/// @description Insert description here
// You can write your code in this editor


if(!obj_camera.pause){
	timerFx--;
	if(timerFx <= 0){
		var fx = instance_create_layer(x+irandom(64*image_xscale),y+irandom(64*image_yscale),layer,obj_fx);
		fx.image_yscale = -1;
		randomize();
		var rdm = irandom(1);
		if(rdm == 0)
			fx.sprite_index = s_wind1;
		else 
			fx.sprite_index = s_wind2;
		timerFx = irandom_range(0.2*room_speed,1*room_speed);
	}
}