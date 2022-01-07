///@func load_ability_by_name(ability)
function load_ability_by_name(argument0) {

	if (file_exists(working_directory + "\\Abilities.json")) {
		var _data = load_data_from_file(working_directory + "\\Abilities.json"); 
	}
	else {
		show_message("Ability load Failure");	
	} 


	var _list = _data[? "ABILITIES"];

	for (var i = 0; i < ds_list_size(_list); i++) 
	{
		var _map = _list[| i];
		if (_map[? "Name"] == argument0) {

			var _card = 
			create_card(
				_map[? "Category"],
				_map[? "Name"], 
				floor(_map[? "Attack"]),
				floor(_map[? "Defense"]),
				floor(_map[? "Dodge"]), 
				floor(_map[? "Damage"]), 
				floor(_map[? "Armor"]),
				floor(_map[? "Heal"]),
				floor(_map[? "Power"]),
				floor(_map[? "Speed"]),
				floor(_map[? "Reroll"]),
				floor(_map[? "Disrupt"]),
				floor(_map[? "Disable"]),
				floor(_map[? "Refresh"]),
				floor(_map[? "Gold"]),
				floor(_map[? "Drain"])
			
			);
			ds_map_destroy(_data);		
			return _card;
		}
		//show_message(_map[? "Name"]);
	}





}
