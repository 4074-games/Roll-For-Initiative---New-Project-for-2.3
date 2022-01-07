// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_equip_attribute_by_name(equip, attribute){
	var _data = load_data_from_file(working_directory + "\\Equipment.json"); 
	var _list = _data[? "Equipment"];
	
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _map = _list[| i];
		show_debug_message(_map[? "Name"]);
		if (_map[? "Name"] == equip) {
			var result = _map[? attribute];
			ds_map_destroy(_data);
			return result;
		}
	}
}