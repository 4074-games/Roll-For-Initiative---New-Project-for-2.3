/// @description Insert description here
// You can write your code in this editor
die = -1;
side = instance_create_depth(x, y, depth-1, obj_Side);

usable = true;
selected = false;
used = false;
rerolled = false;
refreshed = false;


image_xscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side"));
image_yscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side"));

//flat = instance_create_depth(30, 120, -1, obj_flat_combat);

flat = pointer_null;