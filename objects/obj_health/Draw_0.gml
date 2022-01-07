/// @description Insert description here
// You can write your code in this editor
if (!enemy) {
	draw_self();
	draw_set_color($e9baca);
	draw_text(x+22, y+32, get_player_info("Life"));
	draw_set_color(c_black);
}

else {
	draw_self();
	draw_set_color($e9baca);
	draw_text(x+22, y+32, get_player_info("Enemy Health"));
	draw_set_color(c_black);
}