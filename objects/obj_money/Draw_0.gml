/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_text(x + 48 - string_width(get_player_info("Cash") / 2), y + 42 - string_height(get_player_info("Cash") / 2), get_player_info("Cash"));
draw_set_color(c_white);
