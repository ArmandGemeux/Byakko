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

// Particles

particle_System = part_system_create();
particle_trail = part_type_create();

var gravityDirection = random_range(180, 320);
var gravityIntensity = random_range(0.1, 0.3);

var lifetimeRotation = random_range(2, 5);

part_type_sprite(particle_trail, s_leaf,0,0,0);
part_type_life(particle_trail, 10,45);
part_type_orientation(particle_trail, -180, 180, 0, lifetimeRotation, 0);
part_type_gravity(particle_trail, gravityIntensity, gravityDirection);
part_type_alpha3(particle_trail, 1,0.5,0);
part_type_size(particle_trail, 0.04,0.12,0,0);

//alarm[0] = 300;
//alarm[1] = 5;