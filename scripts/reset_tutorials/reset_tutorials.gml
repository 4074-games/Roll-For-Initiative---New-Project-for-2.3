// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_tutorials(){
	var _tutorial = load_data_from_file(working_directory + "Tutorials.json");
	var _list = _tutorial[? "Tutorial"];
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _data = _list[| i];
		_data[? "Enabled"] = "1";
	}
	var _string = json_encode(_tutorial);
	save_to_file(working_directory + "Tutorials.json", _string);
	ds_map_destroy(_tutorial);
}