/// @description Insert description here
// You can write your code in this editor


image_xscale = master.ui_size / sprite_get_width(asset_get_index("spr_help_tooltip"));
image_yscale = master.ui_size / sprite_get_height(asset_get_index("spr_help_tooltip"));

image_index = 0;
text_box = instance_create_depth(5, 
	window_get_height() - sprite_get_height(spr_text), 
	-15, 
	obj_swap_tutorial );