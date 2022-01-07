function load_equipment_by_name(argument0) {
	if (file_exists(working_directory + "\\Equipment.json")) {
		var _data = load_data_from_file(working_directory + "\\Equipment.json"); 
	}
	else {
		show_message("Equipment load Failure");	
	} 

	var _list = _data[? "Equipment"];

	for (var i =0; i < ds_list_size(_list); i++) 
	{
		var _map = _list[| i];
	
		if (_map[? "Name"] == argument0) {
		
		var _equipment = 
		create_equipment(
			_map[? "Name"], 
			_map[? "Type"], 
			_map[? "Attack1"],
			_map[? "Attack2"],
			_map[? "Starting Class"], 
			_map[? "Value"],
			_map[? "Power"],
			_map[? "Speed"],
			_map[? "Attack"],
			_map[? "Defend"],
			_map[? "Dodge"],
			_map[? "Gold"],
			_map[? "Spell Power"]
			)
		ds_map_destroy(_data);
		//show_debug_message(_equipment.name);
		return _equipment;
		}
	}
	//show_debug_message("Equip Load Failure");


}
