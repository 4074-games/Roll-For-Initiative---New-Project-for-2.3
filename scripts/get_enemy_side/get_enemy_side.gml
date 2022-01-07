/// @function get_enemy_side(side, enemy, side_number)
/// @param side {side}
/// @param enemy {string}
/// @param side_number {int}
function get_enemy_side(argument0, argument1, argument2) {

	var value = floor(get_enemy_info(argument1, "Side" + string(argument2 + 1)));

	with (argument0) {
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
