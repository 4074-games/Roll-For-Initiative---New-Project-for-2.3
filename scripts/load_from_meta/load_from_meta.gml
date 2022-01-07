// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_from_meta(player, attribute){
	if (file_exists(working_directory + "\\Metadata.json")) {
		var _data = load_data_from_file(working_directory + "\\Metadata.json"); 
	}
	else {
		show_message("Metadata load Failure");	
	} 
	
	var _list = _data[? "Meta"];
	
	for (var i = 0; i < ds_list_size(_list); i++) {
		
		var _map = _list[| i];
	
		if (_map[? "Class"] == player) {
			var result = _map[? attribute]
			ds_map_destroy(_data);
			return result;		
		}
	}
}
