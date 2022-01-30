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

subimWings = 0;

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

//PARTICLES

//Dash

particle_System = part_system_create();
particle_dashTrail = part_type_create();

var dashGravityDirection = random_range(180, 320);
var dashGravityIntensity = random_range(0.1, 0.3);

var lifetimeRotation = random_range(2, 5);

part_type_sprite(particle_dashTrail, s_leaf,0,0,0);
part_type_life(particle_dashTrail, 10,45);
part_type_orientation(particle_dashTrail, -180, 180, 0, lifetimeRotation, 0);
part_type_gravity(particle_dashTrail, dashGravityIntensity, dashGravityDirection);
part_type_alpha3(particle_dashTrail, 1,0.5,0);
part_type_size(particle_dashTrail, 0.04,0.12,0,0);

//Feather Fall

particle_featherfallTrail = part_type_create();

var featherFallGravityIntensity = random_range(-0.2, -0.6);

part_type_sprite(particle_featherfallTrail, s_dot, 0,0,0);
part_type_life(particle_featherfallTrail, 3, 40);
part_type_orientation(particle_featherfallTrail, -180, 180, 0, lifetimeRotation, 0);
part_type_gravity(particle_featherfallTrail, featherFallGravityIntensity, 270);
part_type_alpha3(particle_featherfallTrail, 1,0.3,0);
part_type_size(particle_featherfallTrail, 0.02, 0.1, 0,0);