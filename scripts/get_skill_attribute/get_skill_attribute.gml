// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_skill_attribute(skill_name, attribute){
	if (file_exists(working_directory + "\\Abilities.json")) {
		var _data = load_data_from_file(working_directory + "\\Abilities.json"); 
	}
	else {
		show_message("Abilities load Failure");	
	} 
	
	var _list = _data[? "ABILITIES"];
	
	for (var i = 0; i < ds_list_size(_list); i++) {
		
		var _map = _list[| i];
	
		if (_map[? "Name"] == skill_name) {
			var result = _map[? attribute]
			ds_map_destroy(_data);
			return result;		
		}
	}
	
	

}