
// Side to be Displayed

die = pointer_null;
side = instance_create_depth(x, y, depth-1, obj_Side);

usable = false;
selected = false;
used = false;

image_xscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side"));
image_yscale = master.ui_size / sprite_get_height(asset_get_index("spr_Side"));