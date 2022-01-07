/// @description Insert description here
// You can write your code in this editor


if (get_player_info("Player") ==  "Fighter") {
	edit_player_data("Life", string(real(get_player_info("Life")) + 10));
}

if (get_player_info("Player") == "Wizard") {
	
}
edit_player_data("Transition", "Stats Upgrade");
room_goto(rm_transition);


if (real(get_player_info("Life")) > real(get_player_info("Max Life"))) {
	edit_player_data("Life", get_player_info("Max Life"));
}
edit_player_data("Cash", string(floor(get_player_info("Cash")) + floor(get_player_info("Gold Reward"))));
