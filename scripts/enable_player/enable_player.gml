// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enable_player(class, boolean){
	
	var _data = load_data_from_file(working_directory + "\Metadata.json");
	
	var _list = _data[? "Meta"];
	
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _class = _list[| i];
		if (_class[? "Class"] == class) {
			_class[? "Requirement"] = boolean;
			break;
		}
	}
	var _string = json_encode(_data);
	save_to_file(working_directory + "\Metadata.json", _string);
	ds_map_destroy(_data);
	return 1;
	
}