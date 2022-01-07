/// @description Insert description here
// You can write your code in this editor

var type = "Inventory"; 

//if (setup_eq) {
	
//	if (eq == pointer_null) {
//		eq = load_equipment_by_name(get_player_info(class));

//	}
//	show_debug_message(eq.title);

//	if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
//		backing = instance_create_depth(x-3, y + 8 - 270, depth-1, obj_equip_display_background);
//		backing.title = eq.title;
//		skill_one = instance_create_depth(x + 3, y + 40 - 270, depth-2, obj_equip_skill_popout);	
//		skill_one.title = eq.ability1;
//		skill_two = instance_create_depth(x + 147, y + 40 - 270, depth-2, obj_equip_skill_popout);
//		skill_two.title = eq.ability2;
//		show_debug_message("Set " + eq.title);
//	}
	
//	setup_eq = false;
//}

//backing.visible = true;
//skill_one.visible = true;
//skill_two.visible = true;

if (setup_eq) {

	//eq = load_equipment_by_name(get_player_info(class));

	
	show_debug_message(eq.title);

	if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
		backing = instance_create_depth(x-3, y + 8 - 270, -4, obj_equip_display_background);
		backing.title = eq.title;
		skill_one = instance_create_depth(x + 3 , y + 40 - 270, -6, obj_menu_skill_popout);	
		skill_one.title = eq.ability1;
		skill_two = instance_create_depth(x + 147, y + 40 - 270, -6, obj_menu_skill_popout);
		skill_two.title = eq.ability2;
		show_debug_message("Set " + eq.title);
	}
	
	else {
		backing = instance_create_depth(x-3 , y + 8 - 270, -4, obj_equip_display_background);
		backing.title = eq.title;
		stats = instance_create_depth(x , y +40 -270, -6, obj_equip_stats_popout);
		stats.title = eq.title;
	}
	upgrade = instance_create_depth(x + 291, y + 60 - 270, -6, obj_flat_base);
	for (var i = 0; i < 6; i++) {
		value = "Upgrade" + string(i);
		show_debug_message(value);
		read_side_from_string(upgrade.side[i].side, get_equip_attribute_by_name(eq.title, value));
	}

	setup_eq = false;
}

if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
	backing.visible = true;
	skill_one.visible = true;
	skill_two.visible = true;
} else {
	stats.visible = true;
	backing.visible = true;
}
upgrade.visible = true;