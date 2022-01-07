/// @description Insert description here
// You can write your code in this editor

//if (place_meeting(x, y, obj_fade)) return;

if (!active) return;

for (var i = 0; i < instance_number(obj_stats_display); i++) {
	var obj = instance_find(obj_stats_display, i);
	obj.display.image_index = 0;
}

display.image_index = 1;


sides = instance_number(obj_stats_adjustable);

for (var i = sides; i >= 0; i--) {
	instance_destroy(instance_find(obj_stats_adjustable, i));
}

var obj = pointer_null;
for (var i = 0; i < 4; i++) {
	//670, 100
	obj[i] = instance_create_depth(670, 100 + (i * (master.ui_size)), -5, obj_stats_adjustable);
	obj[i].die = die;
	obj[i].number = i;
}

obj[4] = instance_create_depth(670 - master.ui_size, 100 + master.ui_size, -5, obj_stats_adjustable);
obj[4].die = die;
obj[4].number = 4;
	
obj[5] = instance_create_depth(670 + master.ui_size, 100 + 2 * master.ui_size, -5, obj_stats_adjustable);
obj[5].die = die;
obj[5].number = 5;

for (var i = 0; i < 6; i++) {
	side_value = get_player_info("Dice " + string(obj[i].die) + ", Side " + string(obj[i].number));
	read_side_from_string(obj[i].side, side_value);
}