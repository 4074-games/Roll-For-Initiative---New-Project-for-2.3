/// @function build_player_side(side, die, number)
/// @param side {side}
/// @param die {int}
/// @param number {int}
function build_player_side(_side, _die, side) {

	var value = floor(get_player_info("Dice " + string(_die) + ", Side " + string(side)));

	with (_side) {
		
		
		
		gold = floor(value / 1000);
		value = value % 1000;
		attack = floor(value / 100);
		value = value % 100;
		defend = floor(value / 10);
		dodge = floor(value % 10);
		pips = gold + attack + defend + dodge;
		update = true;
	}


}
