/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(font_large);
draw_set_halign(fa_center);
draw_text(960,96,name);

draw_set_font(font_mid);
draw_text(960,180,title);

draw_set_font(font_main);
draw_text(960,900,skill);

draw_set_halign(fa_left);
draw_set_font(font_main);

var txt = string_copy(dialog,1,floor(dialogIndex));
var decal = string_width(dialog)/2;
draw_text(960-decal,room_height/3,txt);

draw_sprite(s_player_idle,0,playerPos,(2*room_height)/3);