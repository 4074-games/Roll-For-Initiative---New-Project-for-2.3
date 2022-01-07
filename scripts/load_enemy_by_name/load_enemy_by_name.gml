function load_enemy_by_name(argument0) {
	if (file_exists(working_directory + "\\Enemies.json")) {
		var _data = load_data_from_file(working_directory + "\\Enemies.json"); 
	}
	else {
		show_message("Enemy load Failure");	
	} 


	var _list = _data[? "Enemies"];

	for (var i = 0; i < ds_list_size(_list); i++) 
	{
		var _map = _list[| i];
		if (_map[? "Name"] == argument0) {

			var _enemy = 
			create_enemy(
				_map[? "Name"],
				0,
				[_map[? "Attack1"], _map[? "Attack2"], _map[? "Attack3"], _map[? "Attack4"], _map[? "Attack5"]],
				floor(_map[? "Dice"]),
				[floor(_map[? "Side1"]), floor(_map[? "Side2"]), floor(_map[? "Side3"]), floor(_map[? "Side4"]), floor(_map[? "Side5"]), floor(_map[? "Side6"])] ,
				floor(_map[? "HP"]),
				_map[? "Height"],
				floor(_map[? "Act"]),
				_map[? "Type"]
			);
			ds_map_destroy(_list);		
			return _enemy;
		}
		//show_message(_map[? "Name"]);
	}





}
