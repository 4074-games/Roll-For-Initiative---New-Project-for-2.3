/// @function build_equipment_list(act)
function build_equipment_list(act) {

	/// @param act {int}

	if (file_exists(working_directory + "\\Equipment.json")) {
		var _data = load_data_from_file(working_directory + "\\Equipment.json"); 
	}
	else {
		show_message("Equipment load Failure");	
	} 

	var _list = _data[? "Equipment"];
	var count = 0;
	var _equipment_list = pointer_null;
	for (var i =0; i < ds_list_size(_list); i++) 
	{
		var _map = _list[| i];
		if ((_map[? "Act"] == act) && ((_map[? "Starting Class"] == get_player_info("Player") || (_map[? "Starting Class"] == "All")))) {
			_equipment_list[count] = _map[? "Name"];
			count++;
		}
	
	}	
	ds_map_destroy(_data);
	return _equipment_list;




}
