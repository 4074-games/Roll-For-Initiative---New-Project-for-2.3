/// @description Insert description here
// You can write your code in this editor


//if (skill_one != pointer_null) instance_destroy(skill_one);
//if (skill_two != pointer_null) instance_destroy(skill_two);
//if (backing != pointer_null) instance_destroy(backing);
show_debug_message(eq.class);
if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
	backing.visible = false;
	skill_one.visible = false;
	skill_two.visible = false;
} else {
	backing.visible = false;
	stats.visible = false;
}

try {
upgrades.visible = false;
} catch (_exception) {
	upgrades = instance_create_depth(x + 291 - 300, y + 50 - 270, -6, obj_flat_base);
	upgrades.visible = false;
	upgrades.setup = true;
	show_debug_message("Recover");
}