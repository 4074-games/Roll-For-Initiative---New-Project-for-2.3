function get_manager() {
	var _manager = instance_create_depth(0, 0, 0, obj_Manager);

	_manager.dice_quantity = get_player_info("Dice Number");
	_manager.player = get_player_info("Player");
	_manager.enemy = get_player_info("Enemy");
	_manager.life = real(get_player_info("Life"));
	_manager.max_life = real(get_player_info("Max Life"));
	for (var _i = 0; _i < _manager.dice_quantity; _i++) {
		_manager.dice[_i] = instance_create_depth(0, 0, -1, obj_Die);
		for (var _j = 0; _j < 6; _j++) {
			read_side_from_string(_manager.dice[_i].side[_j], get_player_info("Dice " + string(_i) + ", Side " + string(_j)));
			_manager.dice[_i].side[_j].die = _i; 
			_manager.dice[_i].side[_j].side = _j;
		}
	}


}
