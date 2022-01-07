instance_create_depth(0,0,1, obj_status_background);
var manager = instance_create_depth(0,0,0, obj_Manager);
instance_create_depth(window_get_width() - master.ui_size, master.ui_size / 2, 0, obj_money);
decode(manager);

var _health_bar = instance_create_depth(5, 5, -1, obj_max_health);
_health_bar.player = true;

for (var _i = 0; _i < real(get_player_info("Dice Number")); _i++) {
	create_flat_from_int(_i, (_i * master.ui_size * 3) + 25, 50);
}


var _i = 0;
var _temp = get_player_info("Shop Side " + string(_i));
while (_temp != undefined) {
	manager.upgrade_list[_i] = _temp;
	_i++;
	_temp = get_player_info("Shop Side " + string(_i));
}

display_character(200, window_get_height() - 100);

var _x = window_get_width();
var _y = window_get_height();

_x -= master.ui_size * .75;
_y -= master.ui_size * .75;
var _temp_sides = undefined;

_x -= (master.ui_size + 5) * (array_length_1d(manager.upgrade_list) - 1);
for (var _j = 0; _j < array_length_1d(manager.upgrade_list); _j++) {
	_temp_sides[_j] = instance_create_depth(_x, _y, 0, obj_up_side);
	_temp_sides[_j].usable = true;
	_temp_sides[_j].side.side_number = _j;
	_x += master.ui_size + 5;
	read_side_from_string(_temp_sides[_j].side, manager.upgrade_list[_j]);
	show_debug_message(string(_j));
	if (check_for_spent(_j)) {
		with (_temp_sides[_j]) {
			side.image_index = 2;
			usable = false;
			used = true;
			
		}
	}
}

instance_create_depth(master.ui_size * 0.75, window_get_height() - master.ui_size * .75, -1, obj_stats_swap);
//instance_create_depth(master.ui_size * 0.75, window_get_height() - master.ui_size * 1.75, -1, obj_help_status);

instance_create_depth(master.ui_size * 1.75, window_get_height() - master.ui_size * .75, -1, obj_stats_shop_accept);

// Arm, Legs, Charm

display_skill_list(create_player_skill_list(), 230, 350);
