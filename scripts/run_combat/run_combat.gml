/// @function run_combat(player_pass, enemy_pass)
function run_combat(argument0, argument1) {

	/// @param player_pass {boolean}
	/// @param enemy_pass {boolean}
	master.player_pass = argument0;
	master.enemy_pass = argument1;

	if (!master.player_pass) {

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

		for (var i = 0; i < instance_number(obj_rolled_side); i++)  {
			var obj = instance_find(obj_rolled_side, i) {
				if (obj.refreshed) {
					refreshed_dice[refreshed_quantity] = obj;
					refreshed_quantity++;
				}
			}
		}

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
				show_debug_message(obj.name);
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

		for (var i = 0; i < array_length_1d(selected_skills); i++) {
			if (master.debug == 2) show_debug_message(selected_skills[i].name);
		}

		for (var i = 0 ; i < instance_number(obj_rolled_side); i++) {
			var obj = instance_find(obj_rolled_side, i) {
				if (obj.selected) {
					attack_pips += obj.side.attack;
					defend_pips += obj.side.defend;
					dodge_pips += obj.side.dodge;
					selected_dice[selected_quantity] = obj;
					selected_quantity++;
			
			
				}
			}
		}

		if (
			(attack_pips >= attack) && (defend_pips >= defend) && (dodge_pips >= dodge) && 
			(reroll >= rerolled_quantity) && (refresh >= refreshed_quantity) &&
			(disrupt >= disrupted_count) && (disable >= disabled_count)
			) {
			var total_damage = damage + (attack_count * real(get_player_info("Power")));
			var enemy_armor = real(get_player_info("Enemy Armor"));
			var adjustment = total_damage - enemy_armor; 
			if (adjustment > 0) {
				edit_player_data("Enemy Health", string(floor(get_player_info("Enemy Health") - floor(adjustment))));
				edit_player_data("Enemy Armor", "0");
			} else {
				edit_player_data("Enemy Armor", string(adjustment * -1));
			}
			if (total_damage > 0) 
			{
				var sound_hit = audio_play_sound(snd_hit, 10, false);
				audio_sound_gain(sound_hit, 0, 500);
				var hero_obj = instance_find(obj_hero, 0);
				var enemy_obj = instance_find(obj_villain, 0);
				character_move(hero_obj, enemy_obj.x - 50, enemy_obj.y, .25);
				var damage_indicator = instance_create_depth(enemy_obj.x, enemy_obj.y, -3, obj_number);
				damage_indicator.type = "Damage";
				damage_indicator.value = total_damage;
			
			}
			if (heal != 0) {
				var life = real(get_player_info("Life"));
				life += heal;
				var hero_obj = instance_find(obj_hero, 0);
				var heal_indicator = instance_create_depth(hero_obj.x - 10, hero_obj.y, -3, obj_number);
				heal_indicator.type = "Heal";
				heal_indicator.value = heal;
				if (life <= real(get_player_info("Max Life"))) {
					edit_player_data("Life", string(life));
				} else {
					edit_player_data("Life", get_player_info("Max Life"));
				}
			}	
			if (real(get_player_info("Enemy Health")) <= 0) {
	/*			edit_player_data("Transition", "Stats Up Prep");
				room_goto(rm_transition);
				return;
	*/			edit_player_data("Enemy Health", 0);
				audio_play_sound(snd_victory, 10, false);
				var life = real(get_player_info("Life"));
				life += 10;
				if (life > real(get_player_info("Max Life"))) {
					life = real(get_player_info("Max Life"));
				}
				edit_player_data("Life", string(floor(life)));
				show_debug_message("Life = " + get_player_info("Life"));
				var _side = pointer_null;
				var number = real(get_player_info("Upgrade Number"));
				for (var i = 0; i < number; i++) {
					_side[i] = string(
						real(get_player_info("Dice " + string(floor(random(5))) + ", Side " + string(floor(random(5))))) +
						real(get_player_info("Upgrade" + string(floor(random(6)))))
							);
						edit_player_data("Upgrade Side " + string(i), _side[i]);	
					
				}
				edit_player_data("Transition", "Stats Up Prep");
				room_transition_timer("Victory", 1.5);
				return;

			}
			show_debug_message("Enemy Armor Adjustment " + string(adjustment));
			edit_player_data("Armor", string(real(get_player_info("Armor")) + armor + (armor_count * floor(get_player_info("Speed")))));
			if (armor > 0) {
				var hero_obj = instance_find(obj_hero, 0);
				var armor_indicator = instance_create_depth(hero_obj.x - 110, hero_obj.y, -3, obj_number);
				armor_indicator.type = "Armor";
				armor_indicator.value = adjustment;

			}
			edit_player_data("Power", string(real(get_player_info("Power")) + pow));
			edit_player_data("Speed", string(real(get_player_info("Speed")) + spd));
		
			show_debug_message("Player Armor " + get_player_info("Armor"));
			show_debug_message("Player Power " + get_player_info("Power"));
			show_debug_message("Player Speed " + get_player_info("Speed"));
		

			update_dice(selected_dice, rerolled_dice, refreshed_dice, disrupted_dice, disabled_dice);
		/*	for (var i = 0; i < array_length_1d(selected_dice); i++)
			{
				selected_dice[i].selected = false;
				selected_dice[i].used = true;
				selected_dice[i].side.image_index = 2;
			}
		*/	
			for (var i = 0; i < array_length_1d(selected_skills); i++) {
				selected_skills[i].selected = false;
			}
		/*	
			for (var i = 0; i < rerolled_quantity; i++) {
				build_player_side(rerolled_dice[i].side, rerolled_dice[i].die, floor(random(6)));
				rerolled_dice[i].rerolled = false;  
				rerolled_dice[i].usable = true;
				rerolled_dice[i].side.image_index = 0;
			}
	
			for (var i = 0; i < refreshed_quantity; i++) {
				build_player_side(refreshed_dice[i].side, refreshed_dice[i].die, floor(random(6)));
				refreshed_dice[i].refreshed = false;  
				refreshed_dice[i].usable = true;
				refreshed_dice[i].side.image_index = 0;
			}
		*/
		} else {
			show_message("Error");
			return;
		}
		if (skill_count == 0) {
			master.player_pass = true;
			show_debug_message("Player Pass");
		} else {
			master.player_pass = false;
		}
	
	}

	var timer = instance_create_depth(0, 0, 0, obj_timer);
	timer.alarm[0] = room_speed * 0.3;
	//run_enemy_subroutines()
	//if (master.player_pass && master.enemy_pass) reset_combat();

	//if (master.player_pass) run_combat(master.player_pass, master.enemy_pass);



}
