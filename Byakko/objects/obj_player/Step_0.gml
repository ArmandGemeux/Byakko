/// @description Insert description here
// You can write your code in this editor


////////////HORIZONTAL MOVEMENT

if(keyboard_check(key_left) && !keyboard_check(key_right)){
	if(xspeed > 0){
		xspeed = max(0,xspeed-xdecel);	
	}
	xspeed = max(xspeed-xaccel,-xspeedMax);	
}

if(!keyboard_check(key_left) && keyboard_check(key_right)){
	if(xspeed < 0){
		xspeed = min(0,xspeed+xdecel);	
	}
	xspeed = min(xspeed+xaccel,xspeedMax);	
}

if(!keyboard_check(key_left) && !keyboard_check(key_right)){
	if(xspeed > 0)
		xspeed = max(xspeed-xdecel,0);	
	else
		xspeed = min(xspeed+xdecel,0);
}

if(xspeed != 0){
	var spd = abs(xspeed);
	while(spd > 1){
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

if(keyboard_check_pressed(key_jump)){
	if(place_meeting(x,y+1,obj_block)){
		yspeed = -jumpPower;	
	}
}

if(!place_meeting(x,y+1,obj_block)){
	yspeed += grav;	
}

if(yspeed != 0){
	var spd = abs(yspeed);
	while(spd > 1){
		if(!place_meeting(x,y+sign(yspeed),obj_block)){
			y+=sign(yspeed);	
			spd--;
		}
		else {
			spd = 0;
			yspeed = 0;
		}
	}
}