/// @description Insert description here
// You can write your code in this editor


//if (skill_one != pointer_null) instance_destroy(skill_one);
//if (skill_two != pointer_null) instance_destroy(skill_two);
//if (backing != pointer_null) instance_destroy(backing);

if ((eq.class == "Arm") || (eq.class == "Legs") || (eq.class == "Charm")) {
	backing.visible = false;
	skill_one.visible = false;
	skill_two.visible = false;
} else {
	stats.visible = false;
	backing.visible = false;
}
upgrade.visible = false;