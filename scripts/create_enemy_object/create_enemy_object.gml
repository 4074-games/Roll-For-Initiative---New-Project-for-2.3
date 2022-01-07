/// @function create_enemy_object(x, y);
/// @param x {int}
/// @param y {int}
function create_enemy_object(x_coordinate, y_coordinate) {

	var enemy = get_player_info("Enemy");
	
	var enemy_sprite = "spr_villain_" + get_player_info("Enemy");
	enemy_sprite = string_replace(enemy_sprite, " ", "_");

	var enemy_object = instance_create_depth(x_coordinate, y_coordinate, -1, obj_pix_villain);
	if (sprite_exists(asset_get_index(enemy_sprite))) {
		enemy_object.sprite_index = asset_get_index(enemy_sprite);
	}	else {
		enemy_object.sprite_index = spr_villain_Unknown;
	}

	return enemy_object;


}
