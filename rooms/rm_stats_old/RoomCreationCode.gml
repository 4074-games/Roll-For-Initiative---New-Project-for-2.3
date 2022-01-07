instance_create_depth(0,0,1, obj_status_background);
var manager = instance_create_depth(0,0,0, obj_Manager);

for (var _i = 0; _i < real(get_player_info("Dice Number")); _i++) {
	create_flat_from_int(_i, (_i * master.ui_size * 3) + 25, 50);
}


var _i = 0;
var _list = array_create(0);
var _temp = get_player_info("Upgrade Side " + string(_i));
while (_temp != undefined) {
	_list[_i] = _temp;
	_i++;
	_temp = get_player_info("Upgrade Side " + string(_i));
}

/*
for (var _j = 0; _j < array_length_1d(_list); _j++) {
	show_debug_message(_list[_j]);
}
*/

display_character(100, window_get_height() - 100);

var _x = window_get_width();
var _y = window_get_height();

_x -= master.ui_size * .75;
_y -= master.ui_size * .75;
var _temp_sides = undefined;

_x -= (master.ui_size + 5) * (array_length(_list) - 1);
for (var _j = 0; _j < array_length(_list); _j++) {
	_temp_sides[_j] = instance_create_depth(_x, _y, 0, obj_up_side);
	_temp_sides[_j].usable = true;
	_temp_sides[_j].side.side_number = _j;
	_x += master.ui_size + 5;
	read_side_from_string(_temp_sides[_j].side, _list[_j]);
}

var temp = pointer_null;
var count = 0;
temp = get_player_info("Upgrade Spent " + string(count));
while (temp != undefined) {
	_temp_sides[real(temp)].usable = false;
	_temp_sides[real(temp)].side.
	image_index = 2;
	count++;
	temp = get_player_info("Upgrade Spent " + string(count));
}

decode(manager);

instance_create_depth(master.ui_size * 1.25, window_get_height() - master.ui_size * 1.25, -1, obj_stats_swap);