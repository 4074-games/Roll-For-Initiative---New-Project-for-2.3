/// @description Insert description here
// You can write your code in this editor
draw_self();
image_xscale = real(get_player_info("Life")) / real(get_player_info("Max Life"));
draw_text(x, y, get_player_info("Life") + "/" + get_player_info("Max Life"));
return;

