/// @description Insert description here
// You can write your code in this editor

if (setup) {
	for (var _i = 0; _i < 6; _i++) {
	var _dice = die;
	var _x = x;
	var _y = y;
	switch (_i) {
		case 0:
		_x += master.ui_size * .5;
		_y += master.ui_size * 1.5;
		break;
		case 1:
		_x += master.ui_size * 1.5;
		_y += master.ui_size * .5;
		break;
		case 2:
		_x += master.ui_size * 1.5;
		_y += master.ui_size * 1.5
		break;
		case 3:
		_x += master.ui_size * 1.5;
		_y += master.ui_size * 2.5;
		break;
		case 4:
		_x += master.ui_size * 1.5;
		_y += master.ui_size * 3.5;
		break;
		case 5:
		_x += master.ui_size * 2.5;
		_y += master.ui_size * 2.5;
		break;		
	}
	side[_i] = instance_create_depth(_x, _y, -1, obj_Side);
	if (_dice = -1) return;
	read_side_from_string(side[_i], get_player_info("Dice " + string(_dice) + ", Side " + string(_i)));
	side[_i].active = false;
	}
	setup = false;
}