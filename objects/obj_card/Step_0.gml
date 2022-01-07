/// @description Insert description here
// You can write your code in this editor

if (!update) return;

if (update) {
	
	if (!enemy) {
		if ((attack > 0) && (gold == 0)) {
			attack += real(get_player_info("Global Attack"));
			if (attack < 1) attack = 1;
		}
		if ((defend > 0) && (gold == 0)) {
			defend += real(get_player_info("Global Defend"));
			if (defend < 1) defend = 1;
		}
		if ((dodge > 0) && (gold == 0)) {
			dodge += real(get_player_info("Global Dodge"));
			if (dodge < 1) dodge = 1;
		}
		if (gold > 0) {
			gold += real(get_player_info("Global Gold"));
		}
				
	update = false;

		//if ( i < gold) {
		//	pips_array[i].image_index = 3;
		//} else if (i < attack + gold) {
		//	pips_array[i].image_index = 0;
		//} else if (i < attack + defend + gold) {
		//	pips_array[i].image_index = 1;
		//} else if (i < attack + defend + dodge + gold) {
		//	pips_array[i].image_index = 2;
		//} 

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


var total_pips = attack + defend + dodge + gold;




for (var i = 0; i < total_pips; i++) {
	pips_array[i] = instance_create_depth(0, 0, depth - 1, obj_skill_detail_pip );
	pips_array[i].x_offset = 14 + (total_pips - i - 1) * 13;
	pips_array[i].y_offset = 42;
	if (i  < attack) {
		pips_array[i].image_index = 0;
	} else if (i < attack + defend) {
		pips_array[i].image_index = 1;
	} else if (i < attack + defend + dodge) {
		pips_array[i].image_index = 2;
	} else {
		pips_array[i].image_index = 3;
	}
}

for (var i = 0; i < array_length(pips_array); i++) {
	pips_array[i].depth = depth - 1;
}

if (x + 180 > master.window_width) {
	x = x - master.ui_size - 180;
	
	
}

if (visible) {
	for (var i =0; i < array_length(pips_array); i++) {
		pips_array[i].visible = true;
		pips_array[i].x = x + pips_array[i].x_offset;
		pips_array[i].y = y + pips_array[i].y_offset;
	}
	
} else {
	for (var i =0; i < array_length(pips_array); i++) {
		pips_array[i].visible = false;
	}
}

//if (update) {
	
//	if (!enemy) {
//		if (attack > 0) {
//			attack += real(get_player_info("Global Attack"));
//		}
//		if (defend > 0) {
//			defend += real(get_player_info("Global Defend"));
//		}
//		if (dodge > 0) {
//			dodge += real(get_player_info("Global Dodge"));
//		}
//		if (gold > 0) {
//			gold += real(get_player_info("Global Gold"));
//		}
				
	



//		//if ( i < gold) {
//		//	pips_array[i].image_index = 3;
//		//} else if (i < attack + gold) {
//		//	pips_array[i].image_index = 0;
//		//} else if (i < attack + defend + gold) {
//		//	pips_array[i].image_index = 1;
//		//} else if (i < attack + defend + dodge + gold) {
//		//	pips_array[i].image_index = 2;
//		//} 

//		//if (i > skill.attack + skill.defend + skill.dodge) {
//		//	detail_pips_array[i].image_index = 3;
//		//} else if ( i > skill.attack + skill.defend) {
//		//	detail_pips_array[i].image_index = 2;
//		//} else if ( i > skill.attack) {
//		//	detail_pips_array[i].image_index = 1;
//		//} else {
//		//	detail_pips_array[i].image_index = 0;
//		//}
//	}
//	update = false;
}

	
//	for (var i = 0; i < attack + defend + dodge + gold; i++) {
//		if (i < dodge) {
//			pip = instance_create_depth(
//				x + width - offset - (i * 16), 
//				y + offset, 
//				depth - 1, 
//				obj_Dodge );
//		} else if (i < dodge + defend) {
//			pip = instance_create_depth(
//				x + width - offset - (i * 16), 
//				y + offset, 
//				depth - 1, 
//				obj_Defend );
//		} else if (i < attack + dodge + defend) {
//			pip = instance_create_depth(
//				x + width - offset - (i * 16),
//				y + offset, 
//				depth - 1, 
//				obj_Attack );
//		} else if (i < attack + dodge + defend + gold) {
//			pip = instance_create_depth(
//				x + width - offset - (i * 16),
//				y + offset, 
//				depth - 1, 
//				obj_Gold );
//		}
		
		
		
//		pip.image_xscale = 2;
//		pip.image_yscale = 2;
//		pip.x_position = width - (i * 16) - 10;
//		pip.y_position =  10;
//		pip.parent = self;
//		pips_array[array_length(pips_array)] = pip;
		
//}
//	update = false;
//}

