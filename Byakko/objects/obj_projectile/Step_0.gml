/// @description Insert description here
// You can write your code in this editor

if(!obj_camera.pause)
	x += xspeed;

if(place_meeting(x,y,obj_block)){
	audio_play_sound(snd_ProjectileExplosion,1,false);
	instance_destroy();	
}