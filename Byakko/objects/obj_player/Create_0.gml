/// @description Insert description here
// You can write your code in this editor

xaccel = 0.5;
xspeedMax = 8;
xdecel = 1;

jumpPower = 12;
grav = 0.5;

xspeed = 0;
yspeed = 0;

if(!instance_exists(obj_camera)){
	instance_create_depth(x,y,-5,obj_camera);	
}

key_left = vk_left;
key_right = vk_right;
key_jump = vk_space;