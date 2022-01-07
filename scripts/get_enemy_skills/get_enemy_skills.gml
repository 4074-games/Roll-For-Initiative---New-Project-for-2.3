function get_enemy_skills() {

	var attack_pips = 0;
	var defend_pips = 0;
	var dodge_pips = 0;
	var gold_pips = 0;
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
				   ((obj.gold > gold_pips) && (active_dice[j].side.gold > 0))
				|| ((obj.attack > attack_pips) && (active_dice[j].side.attack > 0))
				|| ((obj.defend > defend_pips) && (active_dice[j].side.defend > 0))
				|| ((obj.dodge > dodge_pips) && (active_dice[j].side.dodge > 0))
				) {
					used_dice[used_count] = active_dice[j];
					used_count++;
					gold_pips += active_dice[j].side.gold;
					attack_pips += active_dice[j].side.attack;
					defend_pips += active_dice[j].side.defend;
					dodge_pips += active_dice[j].side.dodge;
				}
			}
		if (
			(gold_pips >= obj.gold) &&
			(attack_pips >= obj.attack) &&
			(defend_pips >= obj.defend) &&
			(dodge_pips >= obj.dodge)
			) {
				for (var i = 0; i < used_count; i++) {
					used_dice[i].used = true;
					used_dice[i].side.image_index = 2;
					used_dice[i].usable = false;
				}
				
				return obj;
			}
			
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
			var my_object = instance_place(x, y, par_pip);
			while (my_object != noone)
			{
				instance_destroy(my_object);
				var my_object = instance_place(x, y, par_pip);
			}
			var change = instance_create_depth(x, y, side.depth - 1, obj_auro);
			change.side = obj.side;
			change.enemy = true;
			
//			get_enemy_side(side, get_player_info("Enemy"), floor(random(6)));
			side.image_index = 0;
		}
	}



	var timer = instance_create_depth(0, 0, 0, obj_timer);
	timer.alarm[1] = room_speed * 0.3;
	return load_ability_by_name("Reroll");
}
