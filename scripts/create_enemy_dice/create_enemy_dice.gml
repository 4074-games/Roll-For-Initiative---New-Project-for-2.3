/// @function create_enemy_dice(x, y)
/// @param x {int} 
/// @param y {int} 
function create_enemy_dice(argument0, argument1) {

	var x_coordinate = argument0;
	var y_coordinate = argument1;

	for (var i = 0; i < floor(get_enemy_info(get_player_info("Enemy"), "Dice")); i++) {
		var temp = instance_create_depth(x_coordinate + floor(i /5) * master.ui_size, y_coordinate + master.ui_size * (i % 5), -1, obj_enemy_rolled);
		temp.side_number = floor(random(6));
		get_enemy_side(temp.side, get_player_info("Enemy"), temp.side_number);
	
	}


}
