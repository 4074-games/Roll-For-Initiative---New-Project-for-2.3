/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_red);
draw_text(x+25, y, get_player_info("Enemy Power"));
draw_set_color(c_teal);
draw_text(x + 45, y, get_player_info("Enemy Speed"));
draw_set_color(c_yellow);
draw_text(x+65, y, get_player_info("Enemy Spell Power"));
draw_set_color(c_black);

if (real(get_player_info("Enemy Disrupted") > 0)) {
	draw_set_color(c_aqua);
	
	draw_text(x + 5, y, string(get_player_info("Enemy Disrupted")));
	draw_set_color(c_black);
}

