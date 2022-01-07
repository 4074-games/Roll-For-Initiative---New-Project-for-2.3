/// @function roll_player_dice()
function roll_player_dice() {

	randomise();

	for (var i = 0; i < instance_number(obj_rolled_side); i++) {
		var obj = instance_find(obj_rolled_side, i);
		with (obj) {
			build_player_side(side, die, floor(random(6)));
		}
	}


}
