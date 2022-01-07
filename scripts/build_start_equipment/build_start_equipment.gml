/// @function build_start_equipment(manager, class)
/// @param manager {manager}
/// @param class {string}
function build_start_equipment(argument0, argument1) {

	var manager = argument0;

	show_debug_message(working_directory);
	
	
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
		show_debug_message(_map[? "Name"]);
		
		
		if ((_map[? "Type"] == "Arm")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.arm = _map[? "Name"];
			
	
		}
		if ((_map[? "Type"] == "Legs")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.leg = _map[? "Name"];
	
		}
		if ((_map[? "Type"] == "Charm")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.charm = _map[? "Name"];
	
		}
		if ((_map[? "Type"] == "Head")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.head = _map[? "Name"];
		}
		if ((_map[? "Type"] == "Chest")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.chest = _map[? "Name"];
		}
		if ((_map[? "Type"] == "Feet")  && (_map[? "Starting Class"] == argument1) && (_map[? "Act"] == 0)) {
			manager.feet = _map[? "Name"];
		}
		manager.inventory[0] = load_equipment_by_name(manager.arm);
		manager.inventory[1] = load_equipment_by_name(manager.leg);
		manager.inventory[2] = load_equipment_by_name(manager.charm);
		manager.inventory[3] = load_equipment_by_name(manager.head);
		manager.inventory[4] = load_equipment_by_name(manager.chest);
		manager.inventory[5] = load_equipment_by_name(manager.feet);

		
	}
	ds_map_destroy(_data);


}
