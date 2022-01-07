// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_equipped(text){
	var list = ["Head", "Arm", "Chest", "Legs", "Feet", "Charm"];
	for (var i = 0; i < array_length(list); i++) {
		if (text == get_player_info(list[i])) {
			return true;
		}
	}
	return false;
}