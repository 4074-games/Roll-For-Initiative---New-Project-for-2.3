/// @description Insert description here
// You can write your code in this editor

var effect = get_player_info("Timer");

switch (effect) {
	case "Failure":
		room_goto(rm_Menu);
		break;
	case "Victory": 
		room_goto(rm_transition);
		break;
}
