/// @description Insert description here
// You can write your code in this editor

xaccel = 0.5;
xspeedMax = 8;
xdecel = 1;

jumpPower = 10;
jumpFrameMax = 15;
grav = 0.5;
yspeedMax = 12;

doubleJumpMax = 0;
if(global.doubleJump)
	doubleJumpMax = 1;

xspeed = 0;
yspeed = 0;

facing = 1;

jumpFrameCurrent = 0;

doubleJumpCurrent = doubleJumpMax;

dashing = false;
dashMaxFrame = 30;
dashCurrentFrame = 0;
dashSpeed = 12;
dashCooldownMax = floor(0.5*room_speed);
dashCooldown = 0;

windMaxPower = 4;
windPower = 1;

if(!instance_exists(obj_camera)){
	instance_create_depth(x,y,-5,obj_camera);	
}

currentMode = worldMode.yin;
layer_set_visible("Tileset_Yang",false);	
instance_deactivate_layer("Instances_Yang");
layer_set_visible("Tileset_Yin",true);	
instance_activate_layer("Instances_Yin");	

pad_index = 0;
if(!gamepad_is_connected(pad_index)){
	pad_index = 4;	
}

pad_haxis = gp_axislh;
pad_jump = gp_face1;
pad_dash = gp_face2;
//pad_swap = gp_shoulderrb;

key_left = vk_left;
key_right = vk_right;
key_jump = vk_space;
key_dash = ord("V");
//key_swap = ord("V");