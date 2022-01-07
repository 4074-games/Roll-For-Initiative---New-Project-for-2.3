/// @description Insert description here
// You can write your code in this editor

var type = "Inventory"; 

if (setup) {
	
	
	eq = load_equipment_by_name(title);

	
	show_debug_message(eq.title);

	if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
		backing = instance_create_depth(x-3 - 300, y + 8 - 270, -4, obj_equip_display_background);
		backing.title = eq.title;
		skill_one = instance_create_depth(x + 3 - 300, y + 40 - 270, -6, obj_equip_skill_popout);	
		skill_one.title = eq.ability1;
		skill_two = instance_create_depth(x + 147 - 300, y + 40 - 270, -6, obj_equip_skill_popout);
		skill_two.title = eq.ability2;
		
		show_debug_message("Set " + eq.title);
	}
	
	else {
		backing = instance_create_depth(x-3 - 300, y + 8 - 270, -4, obj_equip_display_background);
		backing.title = eq.title;
		stats = instance_create_depth(x - 300, y +40 -270, -6, obj_equip_stats_popout);
		stats.title = eq.title;
	}
	upgrades = instance_create_depth(x + 291 - 300, y + 70 - 270, -6, obj_flat_base);
	for (var i = 0; i < 6; i++) {
		value = "Upgrade" + string(i);
		show_debug_message(value);
		read_side_from_string(upgrades.side[i].side, get_equip_attribute_by_name(eq.title, value));
	}
	setup = false;
}

if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
	backing.visible = true;
	skill_one.visible = true;
	skill_two.visible = true;
} else {
	stats.visible = true;
	backing.visible = true;
}
try {
	upgrades.visible = true;
} catch (_exception) {
	upgrades = instance_create_depth(x + 291 - 300, y + 70 - 270, -6, obj_flat_base);
	for (var i = 0; i < 6; i++) {
		value = "Upgrade" + string(i);
		show_debug_message(value);
		read_side_from_string(upgrades.side[i].side, get_equip_attribute_by_name(eq.title, value));
	}
	show_debug_message("Recover");
}
//for (var i = 0; i < 6; i++) {
//	instance_destroy(instance_find(obj_card, i));
//}

//display_skill_list(create_player_skill_list(), 800, 455);