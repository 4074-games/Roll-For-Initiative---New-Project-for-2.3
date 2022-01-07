/// @description Insert description here
// You can write your code in this editor

if (image_index > 5){ 
	if (enemy = false) {
		instance_destroy(self);
		build_player_side(side, die, floor(random(6)));
	}
	else {
		instance_destroy(self);
		get_enemy_side(side, get_player_info("Enemy"), floor(random(6)));
	}
}
