/// @description Insert description here
// You can write your code in this editor

side = instance_create_depth(x, y, depth-1, obj_Side);
side_number = -1;

usable = true;
selected = false;
used = false;
disrupted = false;


image_xscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side"));
image_yscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side")); 