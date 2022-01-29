/// @description Insert description here
// You can write your code in this editor

timer--;
if(timer <=0){
	instance_create_layer(x,y,"Instances",obj_projectile);
	timer = timerMax;
}