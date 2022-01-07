/// @function check_for_spent(value);
/// @param value {int}
function check_for_spent(argument0) {

	var _i = 0;
	var temp = get_player_info("Upgrade Spent " + string(_i));
	while (temp != undefined) {
		if (floor(temp) == argument0) return true;
		_i++;
		temp = get_player_info("Upgrade Spent " + string(_i));
	}
	return false;


}
