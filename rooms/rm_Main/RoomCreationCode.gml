instance_create_depth(0, 0, 1, obj_Main_Background);

var UI = instance_create_depth(
	0, 
	window_get_height() - sprite_get_height(spr_UI_Back), 
	0, 
	obj_UI_base);

UI.image_alpha = .75

master.character = instance_create_depth(250, 380, 0, obj_hero);
master.character.image_xscale = master.character_height / sprite_get_height(asset_get_index("spr_" + master.player + "_running"));
master.character.image_yscale = master.character_height / sprite_get_height(asset_get_index("spr_" + master.player + "_running"));

/*
for (var _i = 0; _i < array_length_1d(master.hand); _i++) {
	ability = load_ability_by_name(master.hand[_i]);
	ability.x = UI.x + 15;
	ability.y = UI.y + 15 + (sprite_get_height(asset_get_index("spr_card_back")) * _i);
	ability.active = true;
	ability.depth = -1;
}
*/
instance_create_depth(5, 5, -1, obj_max_health);
var top = pointer_null;

var x_die_position = UI.x + 20 + sprite_get_width(asset_get_index("spr_card_back")) + (0.5 * sprite_get_width(asset_get_index("spr_Side")));

for (var i = 0; i < 5; i++) {
	var y_die_position = 15 +  UI.y + (i * sprite_get_height(asset_get_index("spr_card_back"))) + (0.5 * sprite_get_height(asset_get_index("spr_card_back")));
	top[i] = instance_create_depth(x_die_position, y_die_position, 0, obj_top);
	top[i].die = master.dice[i];
	set_side(top[i].side, top[i].die.side[floor(random(6))]);
}

encode(master);


var _file_in = file_text_open_read(working_directory + "\player.json");
var _test_string = file_text_read_string(_file_in);
show_debug_message(_test_string);
file_text_close(_file_in);


show_debug_message(get_player_info("Dice 0, Side 3"));