///@function reset_combat() 
function reset_combat() {

	if (master.debug == 2) show_debug_message("Combat Reset"); 

	master.player_pass = false;
	master.enemy_pass = false;

	edit_player_data("Armor", string(floor(real(get_player_info("Armor")/4))));
	edit_player_data("Enemy Armor", string(floor(real(get_player_info("Enemy Armor")/4))));

	for (var i = 0; i < instance_number(obj_rolled_side); i++) {
		var obj = instance_find(obj_rolled_side, i);
		with (obj) {
			usable = true;
			selected = false;
			used = false;
			rerolled = false;
			refreshed = false;
			build_player_side(side, die, floor(random(6)));
			side.image_index = 0;
		}
	}

	for (var i = 0; i < instance_number(obj_enemy_rolled); i++) {
		var obj = instance_find(obj_enemy_rolled, i);
		with (obj) {
			usable = true;
			selected = false;
			used = false;
			rerolled = false;
			refreshed = false;
			get_enemy_side(side, get_player_info("Enemy"), floor(random(6)));
			side.image_index = 0;
		}
	}



}
