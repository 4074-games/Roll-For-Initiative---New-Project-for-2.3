/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_text_transformed(x+25, y, get_player_info("Power"), 1, 1, image_angle);
draw_set_color(c_teal);
draw_text_transformed(x + 45, y, get_player_info("Speed"), 1, 1, image_angle);
draw_set_color(c_yellow);
draw_text_transformed(x+65, y, get_player_info("Spell Power"), 1, 1, image_angle);
draw_set_color(c_black);


if (real(get_player_info("Player Disrupted") > 0)) {
	draw_set_color(c_aqua);
	draw_text(x + 5, y, "Disrupted " + get_player_info("Player Disrupted"));
	draw_set_color(c_black);
}