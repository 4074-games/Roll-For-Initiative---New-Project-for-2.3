/// @function get_player_info(target)
/// @param target {string)
function get_player_info(key) {

	var _data = load_data_from_file(working_directory + "\player.json");
	
	
	
	//Retrieve the list from the player data.
	var _list = _data[? "Player Data"];

	// Retrieve the Map from the List.
	var _map = _list[| 0];

	//Retrieve the result that matches the Key.
	var _result = _map[? key];
	//ds_map_destroy(_map);
	ds_map_destroy(_data);
	return _result;


}
