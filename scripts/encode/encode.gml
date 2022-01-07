function encode(argument0) {
	//@description save_to_file(manager)

	var _data = ds_list_create();
	var _map = ds_map_create();



	with (argument0) {
		ds_list_add(_data, _map);
		ds_list_mark_as_map(_data, ds_list_size(_data) - 1);
		ds_map_add(_map, "Dice Number", string(dice_quantity));
		ds_map_add(_map, "Player", player);
		ds_map_add(_map, "Life", string(life));
		ds_map_add(_map, "Max Life", string(max_life));
		ds_map_add(_map, "Enemy", enemy);
		ds_map_add(_map, "Transition", transition);
		var side_array = array_create(0);
		if (player == "Fighter") {
			side_array = [100, 100, 100, 10, 10, 1]; 
		}
		if (player == "Wizard") {
			side_array = [1100, 1100, 1010, 1010, 1000, 1000];
		}
		for (var _i =0; _i < dice_quantity; _i++) {
			for (var _j = 0; _j < 6; _j++) {
				//var _side = dice[_i].side[_j].gold * 1000 + dice[_i].side[_j].attack * 100 + dice[_i].side[_j].defend * 10 + dice[_i].side[_j].dodge;
				var _side = side_array[_j];
				ds_map_add(_map, "Dice " + string(_i) + ", Side " + string(_j), _side);	
			}
		}
		for (var i = 0; i < 6; i++) {
			ds_map_add(_map, "Dice " + string(dice_quantity) + ", Side " + string(i), "0");
		}
		
		
		_map[? "Arm"] = arm;
		_map[? "Legs"] = leg;
		_map[? "Charm"] = charm; 
		_map[? "Head"] = head;
		_map[? "Chest"] = chest;
		_map[? "Feet"] = feet;
		_map[? "Global Power"] = "100";
		_map[? "Global Armor"] = "0";
		_map[? "Global Speed"] = "0";
		_map[? "Global Attack"] = "0";
		_map[? "Global Defend"] = "0";
		_map[? "Global Dodge"] = "0";
		_map[? "Global Gold"] = "0";
		
		_map[? "Cash"] = "100";
		_map[? "Global Enemy Power"] = "0";
		_map[? "Global Enemy Speed"] = "0";
		_map[? "Global Enemy Spell Power"] = "0";
		_map[? "Column"] = "-1";
		_map[? "Row"] = "-1";
		_map[? "Act"] = "1";
		
		_map[? "Upgrade0"] = "1000";
		_map[? "Upgrade1"] = "1000";
		_map[? "Upgrade2"] = "100";
		_map[? "Upgrade3"] = "100";
		_map[? "Upgrade4"] = "10";
		_map[? "Upgrade5"] = "1";
		var _equipment = ds_list_create();
		for (var i = 0; i < array_length(inventory); i++){
			var target = "Inventory" + string(i);
			_map[? target] = inventory[i].title;
		}
		
	}
	


	var _wrapper = ds_map_create();


	ds_map_add_list(_wrapper, "Player Data", _data);

	var _string = json_encode(_wrapper);
	show_debug_message(_string);
	save_to_file(working_directory + "\player.json", _string);
	ds_map_destroy(_wrapper);

	edit_player_data("Power", get_player_info("Global Power"));
	edit_player_data("Speed", get_player_info("Global Speed"));
	edit_player_data("Armor", get_player_info("Global Armor"));

	generate_map();
	//var _types = ["battle", "elite", "equipment", "shop"];
	//for (var _i = 0; _i < 7; _i++) {
	//	for (var _j = 0; _j < 6; _j++) {
	//		edit_player_data("Column " + string(_i) + ", Row " + string(_j), _types[floor(random(array_length(_types)))]);
	//	}
	//}



}
