function get_combat_results(player_skill, enemy_skill) {
	var player_damage = 0;
	var player_armor = 0;
	var enemy_damage = 0;
	var enemy_armor = 0;
	var output = array_create(0);
	var output_count = 0;
	
	output[0] = "";
	
	if (player_skill.title == "Stunned") {
		output[output_count] = get_player_info("Player") + " is stunned and is taking a turn to recover.";
		output_count++;
	}	else if (player_skill.title == "Reroll") {
		output[output_count] = get_player_info("Player") + " passed and is rerolling their dice.";
		output_count++;
	}	else {
		output[output_count] = get_player_info("Player") + " used " + player_skill.title + ".";
		output_count++
		
	}

	
	if (enemy_skill.title == "Stunned") {
		output[output_count] = get_player_info("Enemy") + " is stunned and is taking a turn to recover.";
		output_count++;
	} else if (enemy_skill.title == "Reroll") {
		output[output_count] = get_player_info("Enemy") + " passed and is rerolling their dice.";
		output_count++;
	} else {
		output[output_count] = get_player_info("Enemy") + " used " + enemy_skill.title + ".";
		output_count++
		
	}

	if (player_skill != pointer_null) {
		edit_player_data("Life" , string( real(get_player_info("Life")) + player_skill.heal));
		if (player_skill.heal) {
			output[output_count] = get_player_info("Player") + " heals " + string(player_skill.heal) + ".";
			output_count++;
		}
		edit_player_data("Speed", string( real(get_player_info("Speed")) + player_skill.spd));
		if (player_skill.spd) {
			output[output_count] = get_player_info("Player") + " gains " + string(player_skill.spd) + " speed.";
			output_count++;
		}
		edit_player_data("Power", string( real(get_player_info("Power")) + player_skill.pow));
		if (player_skill.pow) {
			output[output_count] = get_player_info("Player") + " gains " + string(player_skill.pow) + " power.";
			output_count++;
		}

	}
	
	if (player_skill != pointer_null) {
		if ((player_skill.damage > 0) && (player_skill.gold > 0)) {
			player_damage = player_skill.damage + real(get_player_info("Spell Power"));
			show_debug_message("Damage = " + string(player_damage));
		}
		else if (player_skill.damage > 0) {
			player_damage = player_skill.damage + real(get_player_info("Power"));
			show_debug_message("Damage = " + string(player_damage));
		}
		if ((player_skill.armor > 0) && (player_skill.gold > 0)) {
			player_armor = player_skill.armor + real(get_player_info("Spell Power"));
		}
		else if (player_skill.armor > 0) {
			player_armor = player_skill.armor + real(get_player_info("Speed"));
//			show_debug_message("Armor = " + string(player_armor));
		}
	}
	
	if (enemy_skill != undefined) {
		edit_player_data("Enemy Health" , string( real(get_player_info("Enemy Health")) + enemy_skill.heal));
		if (enemy_skill.heal) {
			output[output_count] = get_player_info("Enemy") + " heals " + string(enemy_skill.heal) + ".";
			output_count++;
		}

		edit_player_data("Enemy Speed", string( real(get_player_info("Enemy Speed")) + enemy_skill.spd));
		if (enemy_skill.spd) {
			output[output_count] = get_player_info("Enemy") + " gains " + string(enemy_skill.spd) + " speed.";
			output_count++;
		}

		edit_player_data("Enemy Power", string( real(get_player_info("Enemy Power")) + enemy_skill.pow));
		if (enemy_skill.heal) {
			output[output_count] = get_player_info("Enemy") + " gains " + string(enemy_skill.pow) + " power.";
			output_count++;
		}

		if (enemy_skill.damage > 0) {
			enemy_damage = enemy_skill.damage + real(get_player_info("Enemy Power"));
//			show_debug_message("Damage = " + string(enemy_damage));
		}
		if (enemy_skill.armor > 0) {
			enemy_armor = enemy_skill.armor + real(get_player_info("Enemy Speed"));
//			show_debug_message("Armor = " + string(enemy_armor));
		}
		
	} 
	var player_attack = 0;
	var enemy_attack = 0;
	if ( player_damage > enemy_armor) {
		player_attack = player_damage - enemy_armor;
		output[output_count] = 
			get_player_info("Player") + " dealt " + string(player_attack) + " damage, "  
			+ string(enemy_armor) + " blocked."
			output_count++;
		edit_player_data("Enemy Disrupted", floor(get_player_info("Enemy Disrupted") + player_skill.disrupt));
		if (player_skill.disrupt) {
			output[output_count] = "Stunning the " + get_player_info("Enemy");
			output_count++;
		}
	}
	else if (player_attack > 0) {
		output[output_count] = get_player_info("Player") + " attacks for " + string(player_damage) + ", all of it was blocked.";
		output_count++;
	}
	if (enemy_damage > player_armor) {
		enemy_attack = enemy_damage - player_armor;
		output[output_count] = 
			get_player_info("Enemy") + " dealt " + string(enemy_attack) + " damage, "  + string(player_armor) + " blocked."
			output_count++;
		if (enemy_skill.disrupt) {
			output[output_count] = "Stunning " + get_player_info("Player");
			output_count++;
		}
		edit_player_data("Player Disrupted", floor(get_player_info("Player Disrupted") + enemy_skill.disrupt));
	} else if (player_armor > 0) {
		edit_player_data("Enemy Disrupted", floor(get_player_info("Enemy Disrupted") + player_skill.disrupt));
		if (player_skill.disrupt) {
			output[output_count] = "Stunning the " + get_player_info("Enemy");
			output_count++;
		}

	}
	if (player_skill.drain) {
			edit_player_data("Life", string(real(get_player_info("Life")) + player_attack));
			if (player_attack) {		
				output[output_count] = get_player_info("Player") + " drains " + string(player_attack) 
					+ " from " + get_player_info("Enemy") + ".";
				output_count++;
			}
			if (real(get_player_info("Life")) > real(get_player_info("Max Life"))) {
				edit_player_data("Life", get_player_info("Max Life"));
				
			}
		}
	if (enemy_skill.drain) {
		edit_player_data("Enemy Health", string(real(get_player_info("Enemy Health")) + enemy_attack));
		if (enemy_attack) {		
			output[output_count] = get_player_info("Enemy") + " drains " + string(enemy_attack) 
				+ " from " + get_player_info("Player") + ".";
			output_count++;
		}
	}
	if (player_attack) {
		var obj = instance_find(obj_pix_hero, 0);
		obj.moving = true;
	}
	if (enemy_attack) {
		var obj_enemy = instance_find(obj_pix_villain, 0);
		obj_enemy.moving = true;
	}

	edit_player_data("Life", string( real(get_player_info("Life") - enemy_attack)));
	var enemy_damage_display = instance_create_depth(60, 60, -1, obj_number);
	enemy_damage_display.number = enemy_attack;
	enemy_damage_display.class = "Damage";
	edit_player_data("Enemy Health", string( real(get_player_info("Enemy Health") - player_attack)));
	var damage_display = instance_create_depth(886, 60, -1, obj_number);
	damage_display.number = player_attack;
	damage_display.class = "Damage";
	

	for (var i =0; i < instance_number(obj_card); i++) {
		var obj = instance_find(obj_card, i);
		obj.selected = false;
	}

	if (real(get_player_info("Enemy Health") <= 0)) {
		var timer = instance_create_depth(0, 0, 0, obj_timer);
		timer.alarm[2] = room_speed * 6;
		output[output_count] = get_player_info("Player") + " has defeated " + get_player_info("Enemy") + ".";
		output_count++;
		display_message(output);
		return;
	}

	if (real(get_player_info("Life") <= 0)) {
		var timer = instance_create_depth(0, 0, 0, obj_timer);
		timer.alarm[3] = room_speed * 6;
		output[output_count] = get_player_info("Player") + " has been defeated by " + get_player_info("Enemy") + ".";
		output_count++;
		
	}
	display_message(output);
}