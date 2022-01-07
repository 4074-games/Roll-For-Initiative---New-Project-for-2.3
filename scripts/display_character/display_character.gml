/// @function display_character(x, y)
/// @param x_coordinate {int}
/// @param y_coordinate {int}
function display_character(x_location, y_location) {

	var character = instance_create_depth(x_location, y_location, 0, obj_pix_hero);
	character.sprite_index = asset_get_index("spr_hero_" + get_player_info("Player"));

	//character.image_xscale = master.character_height / sprite_get_height(asset_get_index("spr_hero_" + get_player_info("Player")));
	//character.image_yscale = master.character_height / sprite_get_height(asset_get_index("spr_hero_" + get_player_info("Player")));

	return character;

}
