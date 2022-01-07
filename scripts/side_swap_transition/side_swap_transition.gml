/// @description load_side_by_number(value1, value2, value3...)
/// @param side_value0 {string}
/// @param ... {string}
function side_swap_transition(argument0) {

	var _database = load_data_from_file(working_directory + "\\player.json");
	var _data = _database[? "Player Data"];


	for (var i = 0; i < array_length(argument0); i++) {
			ds_map_add(_data, "Upgrade Side " + string(i), argument0[i]);
	}

	var _string = json_encode(_database);
	save_to_file(working_directory + "\player.json", _string);
	//show_debug_message(_string);
	//show_debug_message(working_directory + "\player.json");
	ds_map_destroy(_database);

	room_goto(rm_stats);


}
