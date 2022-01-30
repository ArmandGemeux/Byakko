/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(font_main);

var txt = string_copy(dialog,1,floor(dialogIndex));
draw_text(room_width/3,room_height/3,txt);

draw_sprite(s_player,0,room_width/3,(2*room_height)/3);
draw_sprite(otherSprite,0,(2*room_width)/3,(2*room_height)/3);