/// @description Insert description here
// You can write your code in this editor

if (get_player_info("Shop Item " + string(position)) != undefined) {
	//draw_self();
	draw_text(x, y + 3, get_player_info("Shop Item " + string(position)));
}