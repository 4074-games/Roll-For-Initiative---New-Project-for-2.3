/// @description Insert description here
// You can write your code in this editor

if (setup) {
	show_debug_message("Column - " + string(column) + ": Row - " + string(row));	
	sprite_index = asset_get_index("spr_map_" + _type);
	image_xscale = 2;
	image_yscale = 2;
	image_index = 20;
	if (!selectable) {
		image_index = 0;
	}
	if (passed) { 
		image_index = 3;
	}
	if (pathed || current) {
		image_index = 1;
	}
	setup = false;
}

