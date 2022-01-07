/// @function get_player_info(target)
/// @param target {string)
function build_enemy_list(_act, _type) {

	var _map = load_data_from_file(working_directory + "\\Enemies.json")

	var _list = _map[? "Enemies"];
	var _count = 0;
	var _array = pointer_null;
	for (var i = 0; i < ds_list_size(_list); i++) {
		var _enemy = _list[| i];
		if ((floor(_enemy[? "Act"]) == _act) && (_enemy[? "Type"] == _type)) {
			_array[_count] = string(_enemy[? "Name"]);
			_count++;
			if (master.debug == 1) show_debug_message(_enemy[? "Name"]);
		}
	
	}
	ds_map_destroy(_map);
	if (master.debug == 1) {
		show_debug_message(_array);
	}
	return _array;



}
