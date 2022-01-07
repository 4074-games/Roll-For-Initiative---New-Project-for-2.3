/// @function create_flat_from_int(dice_number, x, y)
/// @param dice_number {int)
/// @param x_coordinate {int}
/// @param y_coordinate {int}
function create_flat_from_int(argument0, argument1, argument2) {


	for (var _i = 0; _i < 6; _i++) {
		var _dice = argument0;
		var _x = argument1;
		var _y = argument2;
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
	
	
	
	/*	var _top = instance_create_depth(_x, _y, 0, obj_top);
		read_side_from_string(_top.side, get_player_info("Dice " + string(_dice) + ", Side " + string(_i)));
		_top.side.side_number = _i;
		_top.side.die = _dice;
		_top.rolled = true;
	*/
		load_side_by_number(_x, _y, _dice, _i, true);
	}


}
