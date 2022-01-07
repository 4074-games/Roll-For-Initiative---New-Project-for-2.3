/// @description Insert description here
// You can write your code in this editor
var temp;
var perma_side;
var upgrade_side;

if (place_meeting(x, y, obj_fade)) return;
if (!usable) return;


for (var i = 0; i < instance_number(obj_stats_adjustable); i++) {
	var obj = instance_find(obj_stats_adjustable, i);
	if (obj.selected) {
		
		upgrade_side = obj;
		break;
	}
}

for (var i = 0; i < instance_number(obj_status_side); i++) {
	var obj = instance_find(obj_status_side, i);
	if (obj.selected) {
		perma_side = obj;
		break;
	}
}

edit_player_data("Dice " + string(upgrade_side.die) + ", Side " +  string(upgrade_side.number), side_to_string(perma_side.side));
edit_player_data("Upgrade Side " + string(perma_side.die), side_to_string(upgrade_side.side));

read_side_from_string(perma_side.side, get_player_info("Upgrade Side " + string(perma_side.die)));

//for (var i = instance_number(obj_stats_adjustable); i >= 0; i--) {
//	var obj = instance_find(obj_stats_adjustable, i);
//	instance_destroy(obj);
//}

instance_destroy(obj_stats_adjustable);

for (var i = 0; i < instance_number(obj_stats_display); i++) {
	var obj = instance_find(obj_stats_display, i);
	if (obj.display.image_index != 0) {
		obj.alarm[1] = 1;
	}
}


//for (var i = 0; i < instance_number(obj_stats_display); i++) {
//	var obj = instance_find(obj_stats_display, i);
//	obj.display.image_index = 0;
//}

//for (var i = 0; i < instance_number(obj_status_side); i++) {
//	var obj = instance_find(obj_status_side, i);
//	obj.selected = false;	
//	obj.usable = true;
//	obj.side.image_index = 0;
//}

