/// @description Insert description here
// You can write your code in this editor

draw_self();

var spriteDraw = s_player_idleAnim;
if(place_meeting(x,y+1,obj_block)){
	if(xspeed != 0){
		//run anim
		spriteDraw = s_player_idleAnim;	
	}
}
else {
	//jump anim
	spriteDraw = s_player_idleAnim;
}

if(active)
	subim += 1;

draw_sprite_ext(spriteDraw,subim,x,y,facing,1,0,c_white,1);

if(subimWings > 0){
	draw_sprite_ext(s_wings_fx,subimWings,x,bbox_top,facing,1,0,c_white,1);	
}
