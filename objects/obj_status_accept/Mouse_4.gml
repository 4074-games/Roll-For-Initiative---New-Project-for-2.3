/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_fade)) return;

var i = 0;
var obj = get_player_info("Upgrade Side " + string(i));
while (true) {
	if (obj == undefined) break;
	delete_player_data("Upgrade Side " + string(i));
	i++;
	obj = get_player_info("Upgrade Side " + string(i));
}

edit_player_data("Transition", "Map Select");
room_goto(rm_transition);

	

