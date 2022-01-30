/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_main);
draw_set_halign(fa_center);

draw_set_color(c_white);
if(index == 1){
	draw_set_color(c_red);	
}
draw_sprite(s_turtle,0,room_width/2,room_height/4);
draw_text(room_width/2,(room_height/4)+164,"Xuanwu");

draw_set_color(c_white);
if(index == 2){
	draw_set_color(c_red);	
}
draw_sprite(s_dragon,0,(3*room_width)/4,room_height/2);
draw_text((3*room_width)/4,(room_height/2)+164,"Qinlong");

draw_set_color(c_white);
if(index == 3){
	draw_set_color(c_red);	
}
draw_sprite(s_phoenix,0,room_width/2,(3*room_height)/4);
draw_text(room_width/2,((3*room_height)/4)+164,"Zhuque");

draw_set_color(c_white);