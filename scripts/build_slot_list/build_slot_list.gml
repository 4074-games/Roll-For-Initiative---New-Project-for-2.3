// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function build_slot_list(slot){

var result = array_create(0);
var i = 0;
var count = 0;
var equip = load_equipment_by_name(get_player_info("Inventory" + string(i)));
while (equip != undefined) {
		if ((equip.class == slot) || (slot = "")) {
			result[count] = equip.title;
			count++;
		}
		i++;
		equip = load_equipment_by_name(get_player_info("Inventory" + string(i)));
	}
return result;

}