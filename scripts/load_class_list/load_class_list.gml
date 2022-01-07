// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_class_list(){
	var results = array_create(0);
	var _count = 0;
	
	var _data = load_data_from_file(working_directory + "\Metadata.json");
	
	var _list = _data[? "Meta"];
	
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _class = _list[| i];
		if (_class[? "Requirement"] == 1) {
			results[_count] = _class[? "Class"];
			_count++;
		}
	}
	ds_map_destroy(_data);
	return results;

}