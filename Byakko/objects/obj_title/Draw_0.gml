/// @description Insert description here
// You can write your code in this editor

//draw_sprite(s_title,0,room_width/2,sprite_get_height(s_title)/2);

draw_set_font(font_main);
draw_set_halign(fa_center);

draw_set_color(c_white);
if(index == 0) 
	draw_set_color(c_red);
draw_text(room_width/2,room_height/2,"New game");

draw_set_color(c_white);
/*if(index == 1) 
	draw_set_color(c_red);
draw_text(room_width/2,(room_height/2)+64,"Continue");

draw_set_color(c_white);
if(index == 2) 
	draw_set_color(c_red);
draw_text(room_width/2,(room_height/2)+128,"Time attack");*/

draw_set_color(c_white);
if(index == 1) 
	draw_set_color(c_red);
draw_text(room_width/2,(room_height/2)+196,"Quit");

draw_set_color(c_white);