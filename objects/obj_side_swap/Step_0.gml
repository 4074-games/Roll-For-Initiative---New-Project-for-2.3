/// @description Insert description here
// You can write your code in this editor

sides = 0;
upgrades = 0;


for (var i = 0; i < instance_number(obj_stats_adjustable); i++) {
	var obj = instance_find(obj_stats_adjustable, i);
	if (obj.selected) {
		sides++;
		break;
	}
}

for (var i = 0; i < instance_number(obj_status_side); i++) {
	var obj = instance_find(obj_status_side, i);
	if (obj.selected) {
		upgrades++;
		break;
	}
}

if (sides && upgrades) {
	sprite_set_speed(spr_side_swap, 10, spritespeed_framespersecond);
	usable = true;
}

else {
	sprite_set_speed(spr_side_swap, 0, spritespeed_framespersecond);
	usable = false;
}
