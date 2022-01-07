/// @description Insert description here
// You can write your code in this editor

edit_player_data(eq.class, eq.title);
for (var i = 0; i < instance_number(obj_equipment_selector); i++) {
	var obj = instance_find(obj_equipment_selector, i);
	if (eq.class == obj.class) {
		obj.eq = pointer_null;
		obj.setup_eq = true;
		obj.backing = pointer_null;
		obj.skill_one = pointer_null;
		obj.skill_two = pointer_null;
		obj.stats = pointer_null;
	}
}


for (var i = 0; i < 6; i++) {
	instance_destroy(instance_find(obj_card, i));
}


var skill_list = instance_find(obj_equip_background, 0).skill_list;
for (var i = 0; i < 6; i++) {
	instance_destroy(skill_list[i]);
}

instance_destroy(obj_equip_background);
instance_create_depth(25, 430, 0, obj_equip_background);
var obj = instance_place(900, 700, obj_flat_base);
instance_destroy(obj);
die_to_summary(832, 540, get_upgrade_die());