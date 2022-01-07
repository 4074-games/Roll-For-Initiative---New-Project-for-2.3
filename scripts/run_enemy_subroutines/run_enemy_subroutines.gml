/// @function run_enemy_subroutines()
function run_enemy_subroutines() {

	var attack_pips = 0;
	var defend_pips = 0;
	var dodge_pips = 0;
	var active_dice = pointer_null;
	var active_count = 0;
	var used_dice = pointer_null;
	var used_count = 0;

	for (var i = 0; i < instance_number(obj_enemy_rolled); i++) {
		var obj = instance_find(obj_enemy_rolled, i);
		if (obj.usable) {
			active_dice[active_count] = obj;
			active_count++;
		}
	}

	for (var i = 0; i < instance_number(obj_card); i++) {
		var obj = instance_find(obj_card, i);
		if (obj.enemy) {
			for (var j = 0; j < active_count; j++) {
				if (
				   ((obj.attack > attack_pips) && (active_dice[j].side.attack > 0))
				|| ((obj.defend > defend_pips) && (active_dice[j].side.defend > 0))
				|| ((obj.dodge > dodge_pips) && (active_dice[j].side.dodge > 0))
				) {
					used_dice[used_count] = active_dice[j];
					used_count++;
					attack_pips += active_dice[j].side.attack;
					defend_pips += active_dice[j].side.defend;
					dodge_pips += active_dice[j].side.dodge;
				}
			}
		if (
			(attack_pips >= obj.attack) &&
			(defend_pips >= obj.defend) &&
			(dodge_pips >= obj.dodge)
			) {
				return obj;
			}
		
		
		//	{
		//		for (var i = 0; i < used_count; i++) {
		//			used_dice[i].usable = false;
		//			used_dice[i].side.image_index = 2;
		//		}
		//		var player_armor = real(get_player_info("Armor"));
		//		var player_health = real(get_player_info("Life"));
		//		var enemy_power = real(get_player_info("Enemy Power"));
		//		var enemy_armor = real(get_player_info("Enemy Armor"));
		//		var enemy_speed = real(get_player_info("Enemy Speed"));

		//		var damage = 0;
		//		if (obj.damage > 0) {
		//			damage = obj.damage;
					
		//			var hero_obj = instance_find(obj_hero, 0);
		//			var damage_indicator = instance_create_depth(hero_obj.x - 100, hero_obj.y, -3, obj_number);
		//			damage_indicator.value = damage;
		//			damage_indicator.type = "Damage";
		//			var villain_obj = instance_find(obj_villain, 0);
		//			character_move(villain_obj, hero_obj.x, hero_obj.y, .25);
		//			var sound_hit = audio_play_sound(snd_hit, 10, false);
		//			audio_sound_gain(sound_hit, 0, 500);
		//			damage += enemy_power;
		//			if (damage > player_armor) {
				
		//				damage -= player_armor;
		//				edit_player_data("Armor", "0");
		//				player_health -= damage;
		//				edit_player_data("Life", string(player_health));
		//				if (player_health <= 0) {
		//					audio_play_sound(snd_failure, 10, false);
		//					room_transition_timer("Failure", 3);
						
		//				}
		//			} else {
		//				player_armor -= damage;
		//				edit_player_data("Armor", string(player_armor));
		//			}
		//		}
		//		if (obj.armor > 0) {
		//			var adjust = obj.armor + enemy_speed;
		//			enemy_armor += adjust;
		//			var villain_obj = instance_find(obj_villain, 0);
		//			var armor_display = instance_create_depth(villain_obj.x + 100, villain_obj.y, -3, obj_number);
		//			armor_display.value = adjust;
		//			armor_display.type = "Armor";
		//			edit_player_data("Enemy Armor", string(enemy_armor));
		//		}
		//		if (obj.pow != 0) {
		//			enemy_power += obj.pow;
		//			edit_player_data("Enemy Power", string(enemy_power));
		//		}
		//		if (obj.spd != 0) {
		//			enemy_speed += obj.spd;
		//			edit_player_data("Enemy Speed", string(enemy_speed));
		//		}
			
			
			
			
		//		return obj;
		//	}
		//}
		attack_pips = 0;
		defend_pips = 0;
		dodge_pips = 0;
		used_count = 0;
		used_dice = pointer_null;
		}
	}

	for (var i = 0; i < instance_number(obj_enemy_rolled); i++) {
		var obj = instance_find(obj_enemy_rolled, i);
		with (obj) {
			usable = true;
			selected = false;
			used = false;
			rerolled = false;
			refreshed = false;
			get_enemy_side(side, get_player_info("Enemy"), floor(random(6)));
			side.image_index = 0;
		}
	}



	var timer = instance_create_depth(0, 0, 0, obj_timer);
	timer.alarm[1] = room_speed * 0.3;


}
