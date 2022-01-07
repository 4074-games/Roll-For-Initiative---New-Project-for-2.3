var _data = load_data_from_file(working_directory + "\\Abilities.json"); 
var _list = _data[? "ABILITIES"];


var card = pointer_null;

for (var i = 0; i < ds_list_size(_list); i++) {
	var _map = _list[| i];
	show_debug_message(_map[? "Name"]);
	card[i] = load_ability_by_name(_map[? "Name"]);
	card[i].x = int64(i / 12) * sprite_get_width(asset_get_index("spr_card_back")); ;
	//show_debug_message(string(sprite_get_height(asset_get_index("spr_card_back"))));
	card[i].y = i % 12* sprite_get_height(asset_get_index("spr_card_back"));
	card[i].active = true;
}

