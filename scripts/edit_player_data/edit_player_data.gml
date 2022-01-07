// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function edit_player_data(key, value){
	
	
	var _data = load_data_from_file(working_directory + "\player.json");

	//Retrieve the list from the player data.
	var _list = _data[? "Player Data"];

	// Retrieve the Map from the List.
	var _map = _list[| 0];

	//Change the result that matches the Key.
	_map[? key] = value; 
	var _string = json_encode(_data);
	save_to_file(working_directory + "\player.json", _string);
	ds_map_destroy(_map);
	ds_map_destroy(_data);

}