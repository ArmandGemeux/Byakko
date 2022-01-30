/// @description Insert description here
// You can write your code in this editor

draw_self();

var spriteDraw = s_player_idleAnim;
if(place_meeting(x,y+1,obj_block)){
	if(xspeed != 0){
		//run anim
		spriteDraw = s_player_run;	
	}
}
else {
	//jump anim
	if(place_meeting(x,y,obj_windUp) || featherFalling){
		spriteDraw = s_player_glide;	
	}
	else {
		spriteDraw = s_player_jump;
	}
}

if(active){
	subim += 1;
	if(spriteDraw == s_player_jump){
		if(subim >= sprite_get_number(s_player_jump)){
			subim = sprite_get_number(s_player_jump)-1;	
		}
	}
	
	if(spriteDraw == s_player_glide){
		if(subim >= sprite_get_number(s_player_glide)){
			subim = sprite_get_number(s_player_glide)-1;	
		}
	}
}

draw_sprite_ext(spriteDraw,subim,x,y,facing,1,0,c_white,1);

if(subimWings > 0){
	draw_sprite_ext(s_wings_fx,subimWings,x,bbox_top,facing,1,0,c_white,1);	
}
