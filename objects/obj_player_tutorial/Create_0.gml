/// @description Insert description here
// You can write your code in this editor

active = false;
sides = array_create(0);

for (var i = 0; i < 5; i++) {

	sides[i] = instance_create_depth(
		x + sprite_get_width(spr_text) - 5 - master.ui_size / 2, 
		(master.ui_size  / 4) + y + 20 + i * (master.ui_size / 2),  
		depth - 1,
		obj_blank_side);

	sides[i].image_index = i;
}

