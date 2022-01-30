/// @description Insert description here
// You can write your code in this editor

draw_self();

var spriteDraw = s_player_idle;
draw_sprite_ext(spriteDraw,subim,x,y,facing,1,0,c_white,1);

if(subimWings > 0){
	draw_sprite_ext(s_wings_fx,subimWings,x,bbox_top,facing,1,0,c_white,1);	
}
