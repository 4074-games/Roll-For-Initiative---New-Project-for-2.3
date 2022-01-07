/// @description Insert description here
// You can write your code in this editor

draw_self();
image_xscale = real(get_player_info("Enemy Health")) / real(get_enemy_info(get_player_info("Enemy"), "HP"));
draw_text(x, y, string(get_player_info("Enemy Health")) + "/" + string(get_enemy_info(get_player_info("Enemy"), "HP")));
return;
