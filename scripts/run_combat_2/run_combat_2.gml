function run_combat_2() {
	var selected_dice = pointer_null;
	var selected_quantity = 0;
	var attack_count = 0;
	var armor_count = 0;
	var selected_skills = pointer_null;
	var skill_count = 0;
	var refreshed_dice = pointer_null;
	var refreshed_quantity = 0;
	var rerolled_dice = pointer_null;
	var rerolled_quantity = 0;
	var disrupted_dice = pointer_null;
	var disrupted_count = 0;
	var disabled_dice = pointer_null;
	var disabled_count = 0;

	var attack_pips = 0;
	var defend_pips = 0;
	var dodge_pips = 0;
	var gold_pips = 0;

	var attack = 0;
	var defend = 0;
	var dodge = 0;
	var gold = 0;
	var damage = 0;
	var armor = 0;
	var heal = 0;
	var pow = 0;
	var spd = 0;
	var reroll = 0;
	var disrupt = 0;
	var disable = 0;
	var refresh = 0;
	
	// Deprecated
	//for (var i = 0; i < instance_number(obj_rolled_side); i++)  {
	//	var obj = instance_find(obj_rolled_side, i) {
	//		if (obj.refreshed) {
	//			refreshed_dice[refreshed_quantity] = obj;
	//			refreshed_quantity++;
	//		}
	//	}
	//}

	for (var i = 0; i < instance_number(obj_rolled_side); i++)  {
		var obj = instance_find(obj_rolled_side, i) {
			if (obj.rerolled) {
				rerolled_dice[rerolled_quantity] = obj;
				rerolled_quantity++;
			}
		}
	}

	for (var i = 0; i < instance_number(obj_enemy_rolled); i++) {
		var obj = instance_find(obj_enemy_rolled, i);
		if (obj.selected) {
			disrupted_dice[disrupted_count] = obj;
			disrupted_count++;
		} else if (obj.disrupted) {
			disabled_dice[disabled_count] = obj;
			disabled_count++;
		}
		
	}

	for (var i = 0; i < instance_number(obj_card); i++) {
		var obj = instance_find(obj_card, i);
		if (obj.selected) {
			show_debug_message(obj.title);
			if (obj.damage > 0) attack_count++;
			if (obj.armor > 0) armor_count++;		
			attack += obj.attack;
			defend += obj.defend;
			dodge += obj.dodge;
			gold += obj.gold;
			damage += obj.damage;
			armor += obj.armor;
			heal += obj.heal;
			pow += obj.pow;
			spd += obj.spd;
			reroll += obj.reroll;
			disrupt += obj.disrupt;
			disable += obj.disable;
			refresh += obj.refresh;
			selected_skills[skill_count] = obj;
			skill_count++;
		}
	}

	for (var i = 0; i < array_length(selected_skills); i++) {
		if (master.debug == 2) show_debug_message(selected_skills[i].title);
	}

	for (var i = 0 ; i < instance_number(obj_rolled_side); i++) {
		var obj = instance_find(obj_rolled_side, i) {
			if (obj.selected) {
				attack_pips += obj.side.attack;
				defend_pips += obj.side.defend;
				dodge_pips += obj.side.dodge;
				gold_pips += obj.side.gold;
				selected_dice[selected_quantity] = obj;
				selected_quantity++;
			}
		}
	}

	if (attack_pips < attack) {
		var output = array_create(0);
		output[0] = "The total attack cost of all of your selected skills is " + string(attack) + ", your selected dice only have " + string(attack_pips) + " worth of attack Pips."
		display_message(output);
		return;
	}
	if (defend_pips < defend) {
		var output = array_create(0);
		output[0] = "The total defend cost of all of your selected skills is " + string(defend) + ", your selected dice only have " + string(defend_pips) + " worth of defend Pips.";
		display_message(output);
		return;
	}
	if (dodge_pips < dodge) {
var output = array_create(0);
		output[0] = "The total dodge cost of all of your selected skills is " + string(dodge) + ", your selected dice only have " + string(dodge_pips) + " worth of dodge Pips.";
		display_message(output);
		return;
	}
	if (gold_pips < gold) {
		var output = array_create(0);
		output[0] = "The total gold cost of all of your selected skills is " + string(gold) + ", your selected dice only have " + string(gold_pips) + " worth of gold Pips.";
		display_message(output);
		return;
	}
	if (reroll < rerolled_quantity) {
		if (rerolled_quantity == 1) var roll_string = " die";
		else var roll_string = " dice";
		var output = array_create(0);
		output[0] = "You are attempting to reroll " + string(rerolled_quantity) + " " + roll_string + ".  Your selected skills only allow you to reroll " + string(reroll) + ".";
		display_message(output);
		return;
	}
	if (refresh < refreshed_quantity) {
		if (refreshed_quantity == 1) var roll_string = " die";
		else var roll_string = " dice";
		var output = array_create(0);
		output[0] = "You are attempting to refresh " + string(refreshed_quantity) + roll_string + ".  Your selected skills only allow you to refresh " + string(refresh) + "."
		display_message(output);
		return;
	}
	if (disable < disabled_count) {
		if (disabled_count == 1) {
			var disable_select = "die";
		}
		else {
			var disable_select = "dice"; 
		}
		var output = array_create(0);
		output[0] = "You are attempting to disable " + string(disabled_count) + " " + disable_select + ".  Your selected skills only allow you to refresh " + string(refresh) + ".";
		display_message(output);
		return;
	}
	
	var player_skill = pointer_null;
	var enemy_skill = pointer_null;
	if (floor(get_player_info("Player Disrupted")) > 0) {
		player_skill = load_ability_by_name("Stunned");
		edit_player_data("Player Disrupted", floor(get_player_info("Player Disrupted")) - 1);		
	}
	
	else if (array_length(selected_skills) > 0) {
		player_skill = selected_skills[0];

		for (var i = 0; i < array_length(selected_dice); i++) {
			selected_dice[i].usable = false;
			selected_dice[i].selected = false;
			selected_dice[i].used = true;
			selected_dice[i].side.image_index = 2;
		}
	
		for (var i = 0; i < array_length(disabled_dice); i++) {
			disabled_dice[i].used = true;
			disabled_dice[i].disrupted = false;
			disabled_dice[i].usable = false;
			disabled_dice[i].side.image_index = 2;
		}
		
		for (var i = 0; i < array_length(rerolled_dice); i++) {
			rerolled_dice[i].used = false;
			rerolled_dice[i].usable = true;
			build_player_side(rerolled_dice[i].side, rerolled_dice[i].die, floor(random(6)));
			rerolled_dice[i].rerolled = false;
			rerolled_dice[i].side.image_index = 0;
			
		}
	}

	else	
	{
		replenish_player();
		player_skill = load_ability_by_name("Reroll");
	}
	if (floor(get_player_info("Enemy Disrupted")) > 0) {
		enemy_skill = load_ability_by_name("Stunned");
		edit_player_data("Enemy Disrupted", floor(get_player_info("Enemy Disrupted")) - 1);
	} else {
		enemy_skill = get_enemy_skills();
	}
	
	get_combat_results(player_skill, enemy_skill);
}


	
