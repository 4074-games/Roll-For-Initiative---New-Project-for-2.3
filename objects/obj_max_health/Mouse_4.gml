/// @description Insert description here
// You can write your code in this editor



if (player) {
	var life = real(get_player_info("Life"));
	show_debug_message(string(life));
	life--;
	edit_player_data("Life", string(life));
	show_debug_message(get_player_info("Life"));
}

