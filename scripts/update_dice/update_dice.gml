/// @function update_dice(selected_dice, rerolled_dice, refreshed_dice)
/// @param selected_dice {array[dice]}
/// @param rerolled_dice {array[dice]}
/// @param refreshed_dice {array[dice]}
/// @param disrupted_dice {array[dice]}
/// @param disabled_dice {array[dice]}
function update_dice(selected_dice, rerolled_dice, refreshed_dice, disrupted_dice, disabled_dice) {

	for (var i = 0; i < array_length(selected_dice); i++)
	{
		selected_dice[i].selected = false;
		selected_dice[i].used = true;
		selected_dice[i].side.image_index = 2;
	}
	
	for (var i = 0; i < array_length(rerolled_dice); i++) {
		build_player_side(rerolled_dice[i].side, rerolled_dice[i].die, floor(random(6)));
		rerolled_dice[i].rerolled = false;  
		rerolled_dice[i].usable = true;
		rerolled_dice[i].side.image_index = 0;
	}
	
	for (var i = 0; i < array_length(refreshed_dice); i++) {
		build_player_side(refreshed_dice[i].side, refreshed_dice[i].die, floor(random(6)));
		refreshed_dice[i].refreshed = false;  
		refreshed_dice[i].usable = true;
		refreshed_dice[i].side.image_index = 0;
	}
	for (var i = 0; i < array_length(disrupted_dice); i++) {
		get_enemy_side(disrupted_dice[i].side, get_player_info("Enemy"), floor(random(6)));
		disrupted_dice[i].selected = false;  
		disrupted_dice[i].usable = true;
		disrupted_dice[i].side.image_index = 0;
	}
	for (var i = 0; i < array_length(disabled_dice); i++) {
	
		disabled_dice[i].disrupted = false;  
		disabled_dice[i].usable = false;
		disabled_dice[i].used = true;
		disabled_dice[i].side.image_index = 2;
	}



}
