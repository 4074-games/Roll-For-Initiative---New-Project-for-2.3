/// @function get_enemy_info(enemy, key)
/// @param enemy {string}
/// @param key {string}
function get_enemy_info(enemy, key) {

	if (file_exists(working_directory + "\\Enemies.json")) {
		var _data = load_data_from_file(working_directory + "\\Enemies.json"); 
	}
	else {
		show_message("Enemy load Failure");	
	} 

	var _list = _data[? "Enemies"];

	for (var i = 0; i < ds_list_size(_list); i++) {
		var _enemy = _list[| i];
		if (_enemy[? "Name"] == enemy) {
			var result = _enemy[? key];
			ds_map_destroy(_data);
			return result;
		}
	}


}
