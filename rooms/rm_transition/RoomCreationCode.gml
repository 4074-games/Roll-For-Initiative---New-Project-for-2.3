edit_player_data("Power", get_player_info("Global Power"));
edit_player_data("Speed", get_player_info("Global Speed"));
edit_player_data("Armor", get_player_info("Global Armor"));
edit_player_data("Enemy Power", get_player_info("Global Enemy Power"));
edit_player_data("Enemy Spell Power", get_player_info("Global Enemy Spell Power"));
edit_player_data("Enemy Speed", get_player_info("Global Enemy Speed"));

master.tooltip = "";

var selector = get_player_info("Transition");
show_debug_message("Selector = " + selector);
randomise();

if (selector == "Training Combat Prep") {
	var enemy_list = build_enemy_list(floor(real(get_player_info("Act"))), "Training");
	edit_player_data("Enemy", enemy_list[floor(random(array_length(enemy_list)))]);
	edit_player_data("Transition", "Combat");
	edit_player_data("Upgrade Number", "3");
	edit_player_data("Starting Life", get_player_info("Life"));
	show_debug_message("Life = " + get_player_info("Life"));
	
	room_goto(rm_combat_perm);
	edit_player_data("Gold Reward", "6");
	
}

if (selector == "Enemy Combat Prep") {
	var enemy_list = build_enemy_list(floor(real(get_player_info("Act"))), "Enemy");
	edit_player_data("Enemy", enemy_list[floor(random(array_length(enemy_list)))]);
	edit_player_data("Transition", "Combat");
	edit_player_data("Upgrade Number", "3");
	

	
	edit_player_data("Starting Life", get_player_info("Life"));
	
	
	room_goto(rm_combat_perm);
	edit_player_data("Gold Reward", "12");
}

if (selector == "Elite Combat Prep") {
	var enemy_list = build_enemy_list(floor(real(get_player_info("Act"))), "Elite");
	edit_player_data("Enemy", enemy_list[floor(random(array_length(enemy_list)))]);
	edit_player_data("Transition", "Combat");
	edit_player_data("Upgrade Number", "5");
	edit_player_data("Starting Life", get_player_info("Life"));
	room_goto(rm_combat_perm);
	edit_player_data("Gold Reward", "20");
}

if (selector == "Boss Combat Prep") {
	var enemy_list = build_enemy_list(floor(real(get_player_info("Act"))), "Boss");
	edit_player_data("Enemy", enemy_list[floor(random(array_length(enemy_list)))]);
	edit_player_data("Transition", "Combat");
	edit_player_data("Starting Life", get_player_info("Life"));
	room_goto(rm_combat_perm);
	edit_player_data("Gold Reward", "30");
}


if (selector == "Combat") {
	room_goto(rm_combat_perm);
}

//master.upgrade_list;

//Depreciated, 1/13/2021

//if (selector == "Stats Up Prep") {
	
//	var _side = pointer_null;
//	var number = real(get_player_info("Upgrade Number"));
//	for (var i = 0; i < number; i++) {
//		_side[i] = string(
//			real(get_player_info("Dice " + string(floor(random(5))) + ", Side " + string(floor(random(5))))) +
//			real(get_player_info("Upgrade" + string(floor(random(6)))))
//				);
//	}
	
//	edit_player_data("Transition", "Stats Upgrade");
//	room_goto(rm_transition);
//}

if (selector == "Stats Upgrade") {
		var number = real(get_player_info("Upgrade Number"));

		var upgrade_die = get_upgrade_die();
		for (var i = 0; i < number; i++) {
			
			edit_player_data("Upgrade Side " + string(i), roll_die_to_string(upgrade_die));	
		}
		room_goto(rm_test_stats);


}

if (selector == "Equipment Get") {
	var _equip_list = build_equipment_list(real(get_player_info("Act")));
	var found_equip = _equip_list[floor(random(array_length(_equip_list)))];
	edit_player_data("Found Item", found_equip);
	var i = 0;
	for (i = 0; true; i++) {
		if (get_player_info("Inventory" + string(i)) == undefined)	{
			break;
		}
	}
	edit_player_data("Inventory" + string(i), found_equip);
	edit_player_data("Transition", "Map Select");
	room_goto(rm_equip);
}



if (selector == "Map Select") {
	room_goto(rm_map_pix);
}

if (selector == "Upgrade Set") {
	room_goto(rm_upgrade);
}

if (selector == "Shop Setup") {
	var _equip_list = build_equipment_list(real(get_player_info("Act")));
	for (var i = 0; i < 6; i++) {
		var random_number = -1;
		random_number =  floor(random(array_length(_equip_list)));
		if (check_for_current(_equip_list[random_number])) {
			i--;			
		} else {
			edit_player_data("Shop Item " + string(i), _equip_list[random_number]); 
		}
	}
	edit_player_data("Transition", "Shop");
	room_goto(rm_test_shop);
}

if (selector == "Shop") {
	room_goto(rm_test_shop);
}

if (selector == "Die Test") {
	room_goto(rm_die_test);
}