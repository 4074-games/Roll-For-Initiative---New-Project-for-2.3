/// @description Insert description here
// You can write your code in this editor


if (setup) {
	var eq = load_equipment_by_name(title);
	cash = string(eq.cash);	
	class = eq.class;

	list = ["Reroll", "Disrupt", "Disable", "Drain", "Power", "Speed"];
	var exp_count = 0;
	if ((class == "Arm") || (class == "Legs") || (class == "Charm"))
	{
		for (var i = 0; i < array_length(list); i++) {
			if ((get_skill_attribute(get_equip_attribute_by_name(title, "Attack1"), list[i]) > 0) || 
				(get_skill_attribute(get_equip_attribute_by_name(title, "Attack2"), list[i]) > 0))
			{
				explain[exp_count] = instance_create_depth(x + 445, y + 5 + exp_count * 55, -10, obj_explain);
				explain[exp_count].title = list[i]; 
				exp_count++;
			}
		}
	}
	else {
		for (var i = 0; i < 4; i++) {
			explain[i] = instance_create_depth(x + 445, y + 5 + exp_count * 55, -10, obj_explain);
			explain[i].title = "Stat" + string(i);
			exp_count++;
		}
	}
	
	setup = false;	
	
}

for ( var i = 0; i < array_length(explain); i++) {
	explain[i].visible = visible;
}

