/// @description Insert description here
// You can write your code in this editor

if(currentMode == worldMode.yang){
	shader_set(shd_invert);
	draw_surface(application_surface,0,0);
	shader_reset();
}