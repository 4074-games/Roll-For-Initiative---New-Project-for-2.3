// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_upgrade_die(){
	var slots = ["Head", "Charm", "Arm", "Chest", "Legs", "Feet"];
	var upgrade_die = instance_create_depth(0, 0, 0, obj_Die);
	for (var i = 0; i < 6; i++) {
		var value = load_from_meta(get_player_info("Player"), "Upgrade" + string(i));
		
		for (var j = 0; j < array_length(slots); j++) {
			show_debug_message(slots[j] + " - " + get_player_info(slots[j]));
			show_debug_message(get_equip_attribute_by_name(get_player_info(slots[j]), "Upgrade" + string(i)));
			value += real(get_equip_attribute_by_name(get_player_info(slots[j]), "Upgrade" + string(i)));
		}
		upgrade_die.side[i] = value;
	}
	return upgrade_die;		
}