/// @description Insert description here
// You can write your code in this editor

if (selectable) {
	image_index = 4;
} else {
	instance_create_depth(x, y, depth - 1, obj_map_lock);
}

 if (_type != "boss") instance_create_depth(x, y, depth - 1, obj_pix_hover);