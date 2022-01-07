// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_tutorial_status(type, enabled){
	var _tutorial = load_data_from_file(working_directory + "Tutorials.json");
	var _list = _tutorial[? "Tutorial"];
	var _new_map = ds_map_create();
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _data = _list[| i];
		if (_data[? "Type"] == type) {
			_data[? "Enabled"] = enabled;
			var _string = json_encode(_tutorial);
			save_to_file(working_directory + "\\Tutorials.json", _string);
			ds_map_destroy(_tutorial);
			return;
		}
	}
	ds_map_add(_new_map, "Type", type);
	ds_map_add(_new_map, "Enabled", enabled);
	ds_list_add(_list, _new_map);
	ds_list_mark_as_map(_list, ds_list_size(_list) - 1);
	var _string = json_encode(_tutorial);
	show_debug_message(_string);
	save_to_file(working_directory + "Tutorials.json", _string);
	ds_map_destroy(_tutorial);
}