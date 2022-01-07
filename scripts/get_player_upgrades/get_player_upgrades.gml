// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_player_upgrades(player){
	
	var result = instance_create_depth(-500, -500, 0, obj_Die);
	result.visible = false;
	for (var i = 0; i < 6; i++) {
		result.side[i] = load_from_meta(player, "Upgrade" + string(i));
	}
	return result;
}