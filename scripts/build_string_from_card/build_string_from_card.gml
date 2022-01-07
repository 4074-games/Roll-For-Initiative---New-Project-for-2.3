///build_string_from_card(card)
function build_string_from_card(card) {
	var _string = "";

	with (card) {
	if (enemy = false) {
			if (damage > 0) _string += "Deal " + string(damage + real(get_player_info("Power"))) + " damage.  ";
			if (armor > 0) _string += "Gain " + string(armor + real(get_player_info("Speed"))) + " armor.  ";
			else if (armor == -1) {
				_string += "Lose all armor.";
				if (damage == -1) _string += "Deal that much Damage to Opponent.";
			}
	}	else {
	
			if (damage > 0) _string += "Deal " + string(damage + real(get_player_info("Enemy Power"))) + " damage.  ";
			if (armor > 0) _string += "Gain " + string(armor + real(get_player_info("Enemy Speed"))) + " armor.  ";
			else if (armor == -1) {
				_string += "Lose all armor.";
				if (damage == -1) _string += "Deal that much Damage to Opponent.";
			}
	}
		if (heal > 0) _string += "Heal " + string(heal) + ".  ";
		if (pow > 0) _string += "Gain " + string(pow) + " strength.  ";
		if (spd > 0) _string += "Gain " + string(spd) + " speed.  ";
		if (reroll > 1) _string += "Reroll " + string(reroll) + " dice.  ";
		else if (reroll == 1) _string += "Reroll " + string(reroll) + " die.  ";
		if (disrupt > 1) _string += "Disrupt " + string(disrupt) + " dice.  ";
		else if (disrupt == 1) _string += "Disrupt " + string(disrupt) + " die.  ";
		if (disable > 1) _string += "Disable " + string(disable) + " dice.  ";
		else if (disable == 1) _string += "Disable " + string(disable) + " die.  ";
		if (refresh > 1) _string += "Refresh " + string(refresh) + " dice.  ";
		else if (refresh == 1) _string += "Refresh " + string(refresh) + " die.  ";
		return _string;
	}


}
