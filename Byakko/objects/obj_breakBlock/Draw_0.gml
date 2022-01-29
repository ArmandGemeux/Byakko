/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < image_xscale; i++){
	for(var j = 0; j < image_yscale; j++){
		draw_sprite(s_bamboo,j==0,x+(i*64),y+(j*64));	
	}
}
