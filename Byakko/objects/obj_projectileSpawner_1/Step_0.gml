/// @description Insert description here
// You can write your code in this editor

if(!obj_camera.pause){
	timer--;
	if(timer <=0){
		instance_create_layer(x,y,"Instances",obj_projectile);
		audio_play_sound(snd_Projectile,1,false);
		timer = timerMax;
	}
}