/// @description Insert description here
// You can write your code in this editor

if(currentMode == worldMode.yang){
	shader_set(shd_invert);
	draw_surface(application_surface,0,0);
	shader_reset();
}

if(pause){
	draw_set_color(c_black);
	draw_rectangle(960-128,540-64,960+128,540+96,false);
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	
	draw_set_color(c_white);
	
	draw_text(960,540-40,"PAUSE");
	
	if(pauseIndex == 0){
		draw_set_color(c_red);	
	}
	draw_text(960,540,"Resume");
	
	draw_set_color(c_white);
	if(pauseIndex == 1){
		draw_set_color(c_red);	
	}
	draw_text(960,540+32,"Stage select");
	
	draw_set_color(c_white);
	if(pauseIndex == 2){
		draw_set_color(c_red);	
	}
	draw_text(960,540+64,"Quit");
}