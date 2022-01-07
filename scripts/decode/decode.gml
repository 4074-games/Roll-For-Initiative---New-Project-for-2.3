function decode(argument0) {
	var manager = argument0;

	with (manager) {
		dice_quantity = get_player_info("Dice Number");
		player = get_player_info("Player");
		life = floor(get_player_info("Life"));
		max_life = floor(get_player_info("Max Life"));
		enemy = get_player_info("Enemy");
		arm = get_player_info("Arm");
		leg = get_player_info("Legs");
		charm = get_player_info("Charm");
		for (var i = 0; i < dice_quantity; i++) {
			for (var j = 0; j < 6; j++) {
				read_side_from_string(dice[i].side[j], get_player_info("Dice " + string(i) + ", Side " + string(j)));
			}
		}
	}


}
