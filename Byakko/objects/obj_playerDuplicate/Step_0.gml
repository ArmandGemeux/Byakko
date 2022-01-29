/// @description Insert description here
// You can write your code in this editor


////////////HORIZONTAL MOVEMENT

if(dashing){
	xspeed = dashSpeed * facing;
}
else {
	if((keyboard_check(key_left) || gamepad_axis_value(pad_index,pad_haxis) < -0.5) && !keyboard_check(key_right)){
		if(xspeed > 0){
			xspeed = max(0,xspeed-xdecel);	
		}
		else 
			facing = -1;
		xspeed = max(xspeed-xaccel,-xspeedMax);	
	}

	if(!keyboard_check(key_left) && (keyboard_check(key_right) || gamepad_axis_value(pad_index,pad_haxis) > 0.5)){
		if(xspeed < 0){
			xspeed = min(0,xspeed+xdecel);	
		}
		else
			facing = 1;
		xspeed = min(xspeed+xaccel,xspeedMax);	
	}

	if(!keyboard_check(key_left) && !keyboard_check(key_right) && gamepad_axis_value(pad_index,pad_haxis) < 0.5 && gamepad_axis_value(pad_index,pad_haxis) > -0.5){
		if(xspeed > 0)
			xspeed = max(xspeed-xdecel,0);	
		else
			xspeed = min(xspeed+xdecel,0);
	}
}

if(xspeed != 0){
	var spd = abs(xspeed);
	while(spd >= 1){
		if(!place_meeting(x+sign(xspeed),y,obj_block)){
			x+=sign(xspeed);	
			spd--;
		}
		else {
			spd = 0;
			xspeed = 0;
		}
	}
}

/////////////VERTICAL MOVEMENT

var doubleJumped = false;
var featherFalling = false;
if(dashing){
	yspeed = 0;
}
else {
	if(!place_meeting(x,y+1,obj_block) && jumpFrameCurrent == 0){
        if(!global.float || (!gamepad_button_check(pad_index,pad_jump) && !keyboard_check(key_jump))){
            yspeed = min(yspeed+grav,yspeedMax);
        }
        else {
            yspeed = min(yspeed+grav,1);
			featherFalling = true;
        }
    }
    
    /*if(place_meeting(x,y,obj_wind) && yspeed > -windMaxPower && !place_meeting(x,y-1,obj_block)){
        yspeed -= windPower;
    }*/
    
    if((gamepad_button_check_pressed(pad_index,pad_jump) || keyboard_check_pressed(key_jump)) && (place_meeting(x,y+1,obj_block) || doubleJumpCurrent > 0)){
        if(!place_meeting(x,y+1,obj_block)){
            doubleJumpCurrent--;
			doubleJumped = true;
        }
        yspeed = -jumpPower;
        jumpFrameCurrent = jumpFrameMax;
        //audio_play_sound(snd_Jump,1,false);
    }
    
    if((gamepad_button_check_released(pad_index,pad_jump) || keyboard_check_released(key_jump)) && jumpFrameCurrent > 0){
        jumpFrameCurrent = 0;
        if(yspeed < 0){
            yspeed = yspeed/2;
        }
    }
    
    if(jumpFrameCurrent > 0){
        jumpFrameCurrent--;
    }
	
}

if(yspeed != 0){
	var spd = abs(yspeed);
	while(spd >= 1){
		if(!place_meeting(x,y+sign(yspeed),obj_block)){
			y+=sign(yspeed);	
			spd--;
		}
		else {
			spd = 0;
			yspeed = 0;
			jumpFrameCurrent = 0;
			if(place_meeting(x,y+1,obj_block)){
				doubleJumpCurrent = doubleJumpMax;	
			}
		}
	}
}

////////////////////DASHING
if(dashing){
	dashCurrentFrame--;
	if(dashCurrentFrame == 0){
		dashing = false;
		dashCooldown = dashCooldownMax;
	}
}
else {
	if(dashCooldown > 0){
		dashCooldown--;	
	}
	else {
		if(keyboard_check_pressed(key_dash) || gamepad_button_check_pressed(pad_index,pad_dash)){
			dashing = true;
			dashCurrentFrame = dashMaxFrame;
		}
	}
}

////////////////////SWAP DIMENSIONS

if(/*keyboard_check_pressed(key_swap)*/place_meeting(x,y,obj_swapper)){
	if(currentMode == worldMode.yin){
		currentMode = worldMode.yang;
		layer_set_visible("Tileset_Yin",false);	
		instance_deactivate_layer("Instances_Yin");
		layer_set_visible("Tileset_Yang",true);	
		instance_activate_layer("Instances_Yang");
	}
	else {
		currentMode = worldMode.yin;
		layer_set_visible("Tileset_Yang",false);	
		instance_deactivate_layer("Instances_Yang");
		layer_set_visible("Tileset_Yin",true);	
		instance_activate_layer("Instances_Yin");	
	}
}

//////////////////PARTICULES

if(doubleJumped){
	//c'est là ou que tu fout la flotte	(actif que pendant 1 frame)
}

if(featherFalling){
	//le phénix tombe po super vite sinon il crame dans l'atmosphère? (actif tant qu'on maintient le feather fall
}

if(dashing){
	//dragon dash la quête finale des 7 boules de crystal venues des étoiles (actif tant qu'on est en train de dasher)	
}