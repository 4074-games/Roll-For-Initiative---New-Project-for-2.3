/// @description load_side_by_number(x, y, dice_number, side_number, usable)
/// @param x_coordinate {int}
/// @param y_coordinate {int}
/// @param dice_number {int}
/// @param side_number {int}
/// @param usable {boolean}
function load_side_by_number(argument0, argument1, argument2, argument3, argument4) {


	var top = instance_create_depth(argument0, argument1, 0, obj_top);

	with (top) {
	
		read_side_from_string(side, get_player_info("Dice " + string(argument2) + ", Side " + string(argument3)));
		dice = argument2;
		side.side_number = argument3;
		side.die = argument2;
		usable = argument4
	}
	return top;



}
