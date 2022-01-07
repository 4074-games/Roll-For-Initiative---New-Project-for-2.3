var _enemy_file_string = working_directory + "\\Enemies.json";

var _enemy_list = build_enemy_list(1, "Enemy");
if (master.debug == 1) {
	for (var i = 0; i < array_length_1d(_enemy_list); i++) {
		show_debug_message(_enemy_list);	
	}
}
randomize();

var _selector = floor(random_range(0, array_length_1d(_enemy_list)));

master.enemy = _enemy_list[_selector];
if (master.debug == 1) {
	show_debug_message(_enemy_list[_selector]);
}
var test_enemy = load_enemy_by_name(master.enemy);

test_enemy.x = 400;
test_enemy.y = 400;

var enemy_name = string_replace(master.enemy, " ", "_");
var enemy_sprite = "spr_" + enemy_name + "_Atk";

if (master.debug == 1) {
	show_debug_message(enemy_sprite);
	show_debug_message(sprite_get_height(asset_get_index(enemy_sprite)));
	show_debug_message(master.character_height * test_enemy.height / sprite_get_height(asset_get_index(enemy_sprite)));
}

test_enemy.image_xscale = master.character_height * test_enemy.height / sprite_get_height(asset_get_index(enemy_sprite));
test_enemy.image_yscale = master.character_height * test_enemy.height / sprite_get_height(asset_get_index(enemy_sprite));

