// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_current(target){
	var i = 0;
	var existing = get_player_info("Inventory" + string(i));
	while (true) {
		if (target == existing) {
			return true;
		} else {
			i++;
			existing = get_player_info("Inventory" + string(i));
			if (existing == undefined) {
				break;
			}
		}
	}
	
	i = 0;
	existing = get_player_info("Shop Item " + string(i));
	while (true) {
		if (target == existing) {
			return true;
		} else {
			i++;
			existing = get_player_info("Shop Item " + string(i));
			if (existing == undefined) {
				break;
			}
		}
	}
	
	return false;	
}