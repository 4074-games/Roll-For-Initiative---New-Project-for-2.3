/// @description Insert description here
// You can write your code in this editor
if (title == pointer_null) return;

if (setup && visible && (title != undefined)) {
	skill = load_ability_by_name(title);
	var atk, def, dodge, gold;
	atk = skill.attack;
	def = skill.defend;
	dodge = skill.dodge;
	gold = skill.gold;
	if (enemy == false) {
		if ((atk >0) && (gold == 0)) {
			atk += get_player_info("Global Attack");
		}
		if ((def > 0) && (gold == 0)){
			def += get_player_info("Global Defend");
		}
		if ((dodge > 0)  && (gold == 0)){
			dodge += get_player_info("Global Dodge");
		}
		if (gold > 0) {
			gold += get_player_info("Global Gold");
		}
	}	

	var total_pips = atk + def + dodge + gold;
	var x_offset = 32 + total_pips * 9;
	var y_offset = 40;
		
	for (var i = 0; i < total_pips; i++) {
		detail_pips_array[i] = instance_create_depth(0, 0, depth - 1, obj_skill_detail_pip );
		detail_pips_array[i].x_offset = 30 + ((total_pips - 1) * 12) - i * 12;
		detail_pips_array[i].y_offset = 54;
		if (i < atk) {
			detail_pips_array[i].image_index = 0;
		} else if (i < atk + def) {
			detail_pips_array[i].image_index = 1;
		} else if (i < atk + def + dodge) {
			detail_pips_array[i].image_index = 2;
		} else {
			detail_pips_array[i].image_index = 3;
		}  

		//if (i > skill.attack + skill.defend + skill.dodge) {
		//	detail_pips_array[i].image_index = 3;
		//} else if ( i > skill.attack + skill.defend) {
		//	detail_pips_array[i].image_index = 2;
		//} else if ( i > skill.attack) {
		//	detail_pips_array[i].image_index = 1;
		//} else {
		//	detail_pips_array[i].image_index = 0;
		//}
	}
	update = false;
	setup = false;
}

	


if (visible) {
	for (var i = 0; i < array_length(detail_pips_array); i++) {
		detail_pips_array[i].x = x + detail_pips_array[i].x_offset;
		detail_pips_array[i].y = y + detail_pips_array[i].y_offset;
		detail_pips_array[i].visible = true; 
	}
} else {
	for (var i = 0; i < array_length(detail_pips_array); i++) {
		detail_pips_array[i].x = x + detail_pips_array[i].x_offset;
		detail_pips_array[i].y = y + detail_pips_array[i].y_offset;
		detail_pips_array[i].visible = false;
	}	
}


if (moving && !enemy && (x <= initial_x + 185)) {
	x += 4;
	//show_debug_message("y = " + string(y));  
}

if (returning && !enemy && (x > initial_x)) {
	x -= 8;
}

if (returning && !enemy && (x <= initial_x)) {
	visible = false;
}


if (moving && enemy && (x >= initial_x - 150)) {
	x -= 4;
	show_debug_message("x = " + string(x));  
}

if (returning && enemy && (x < initial_x)) {
	x += 8;
}

if (returning && enemy && (x >= initial_x)) {
	visible = false;
}