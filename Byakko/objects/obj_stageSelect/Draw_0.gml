/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_main);
draw_set_halign(fa_center);

draw_set_color(c_white);
if(index == 1){
	draw_set_color(c_red);	
}
draw_sprite(s_turtle,0,room_width/2,room_height/3);
draw_text(room_width/2,(room_height/3)+64,"Xuanwu");

draw_set_color(c_white);
if(index == 2){
	draw_set_color(c_red);	
}
draw_sprite(s_dragon,0,(2*room_width)/3,room_height/2);
draw_text((2*room_width)/3,(room_height/2)+64,"Qinlong");

draw_set_color(c_white);
if(index == 3){
	draw_set_color(c_red);	
}
draw_sprite(s_phoenix,0,room_width/2,(2*room_height)/3);
draw_text(room_width/2,((2*room_height)/3)+64,"Zhuque");

draw_set_color(c_white);