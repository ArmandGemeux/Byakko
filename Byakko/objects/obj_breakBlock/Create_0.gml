/// @description Insert description here
// You can write your code in this editor

myBlock = instance_create_layer(x,y,layer,obj_block);
myBlock.image_xscale = image_xscale;
myBlock.image_yscale = image_yscale;
myBlock.visible = false;
instance_deactivate_object(myBlock);

alarm[0] = 1;