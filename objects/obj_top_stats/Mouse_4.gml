/// @description Insert description here
// You can write your code in this editor
if (master.debug == 1) show_debug_message("Object Clicked = " + object_get_name(object_index));
if (master.message_box) return;


var _str = object_get_name(object_index);

for (_i = 0; _i < instance_number(asset_get_index(_str)); _i++) {
	var _obj = instance_find(asset_get_index(_str), _i);
	if (master.debug == 1) show_debug_message("Object Called " + string(_i));
	if (_obj.selected == true) {
		
		if (master.debug == 1) show_debug_message("Test");
		_obj.selected = false;
		_obj.usable = true;
		_obj.side.image_index = 0;
		break;
	}
	
}

if (usable == true) {
	side.image_index = 1;
	usable = false;
	selected = true;
}

var _button = instance_find(obj_stats_swap, 0);


with (_button) {
	if (available == true) return;
	if (master.debug == 1) show_debug_message("Stats Swap Button Call");
	var perm_count = 0;
	var up_count = 0;

	for (var i = 0; i < instance_number(asset_get_index("obj_top")); i++) {
		var _perm_side = instance_find(asset_get_index("obj_top"), i);
		if (_perm_side.selected == true) {
			perm_count++;
			break;
		}
	}

	for (var i = 0; i < instance_number(asset_get_index("obj_up_side")); i++) {
		var _up_side = instance_find(asset_get_index("obj_up_side"), i);
		if (_up_side.selected == true) {
			up_count++;
			break;
		}
	}

if ((perm_count == 1) && (up_count == 1)) {
	available = true;
	image_index = 0;
}
}