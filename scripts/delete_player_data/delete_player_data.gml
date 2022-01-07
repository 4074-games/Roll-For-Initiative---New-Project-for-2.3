/// @function edit_player_data(String key, String value)
/// @param key {string}
function delete_player_data(argument0) {


	var _data = load_data_from_file(working_directory + "\player.json");
	var _key = argument0;

	//Retrieve the list from the player data.
	var _list = _data[? "Player Data"];

	// Retrieve the Map from the List.
	var _map = _list[| 0];

	ds_map_delete(_map, _key);

	//Retrieve the result that matches the Key.

	var _string = json_encode(_data);
	show_debug_message(_string);
	save_to_file(working_directory + "\player.json", _string);
	ds_map_destroy(_map);
	ds_map_destroy(_data);


}
