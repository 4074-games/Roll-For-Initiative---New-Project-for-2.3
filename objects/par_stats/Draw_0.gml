/// @description Insert description here
// You can write your code in this editor

var target;

draw_self();
switch (player) {
	case true:
		target = _str;
		break;
	case false:
		target = "Enemy " + _str;
		break;
}

draw_text(
	x - (string_width(get_player_info(target)) / 2), 
	y - (string_height(get_player_info(target)) / 2), 
	get_player_info(target));