var _enemy_file_string = working_directory + "\\Enemies.json";

var _enemy_list = build_enemy_list(1, "Enemy");
if (master.debug == 2) {
	for (var i = 0; i < array_length_1d(_enemy_list); i++) {
		show_debug_message(_enemy_list);	
	}
}
randomize();

var _selector = floor(random_range(0, array_length_1d(_enemy_list)));

var enemy = _enemy_list[_selector];
var enemy_sprite = string_replace(enemy, " ", "_");

enemy_sprite = "spr_" + enemy_sprite + "_Atk";

var enemy_object = instance_create_depth(400, 400, -1, obj_villain);
enemy_object.height = get_enemy_info(enemy, "Height");

enemy_object.sprite_index = asset_get_index(enemy_sprite);

var _height = get_enemy_info(enemy, "Height");

enemy_object.image_xscale = master.character_height * _height / sprite_get_height(asset_get_index(enemy_sprite));
enemy_object.image_yscale = master.character_height * _height / sprite_get_height(asset_get_index(enemy_sprite));

var enemy_side = array_create(0);
var _dice = get_enemy_info(enemy, "Dice");

for (var i = 0; i < _dice; i++) {
	enemy_side[i] = instance_create_depth(800, 400 + master.ui_size * i, -1, obj_enemy_rolled);
	get_enemy_side(enemy_side[i].side, enemy, floor(random(6) + 1));
}


display_skill_list(create_enemy_skill_list(enemy), 800 - (sprite_get_width(spr_card_selected) + master.ui_size / 2), 400 - (master.ui_size / 2));
