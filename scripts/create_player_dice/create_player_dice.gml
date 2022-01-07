/// @function create_player_dice(x, y)
/// @param x_position {int}
/// @param y_position {int}
function create_player_dice(x_coordinate, y_coordinate) {

	randomise();
	for (var i = 0; i < floor(get_player_info("Dice Number")) ; i++) {
		var temp = instance_create_depth(x_coordinate - (floor(i / 5) * master.ui_size)  , y_coordinate + (master.ui_size * (i % 5)) + 4, -1, obj_rolled_side);
		temp.die = i;
		build_player_side(temp.side, i, floor(random(6)));
	}




}
