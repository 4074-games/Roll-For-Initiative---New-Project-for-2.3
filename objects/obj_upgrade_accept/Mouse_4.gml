/// @description Insert description here
// You can write your code in this editor

with (instance_find(obj_upgrade_die, 0))
{
	for (var _j = 0; _j < 6; _j++) {
		var _side = side[_j].gold * 1000 + side[_j].attack * 100 + side[_j].defend * 10 + side[_j].dodge;
		edit_player_data("Upgrade" + string(_j), string(_side));	
	}
}
edit_player_data("Transition", "Map Select");

room_goto(rm_transition);