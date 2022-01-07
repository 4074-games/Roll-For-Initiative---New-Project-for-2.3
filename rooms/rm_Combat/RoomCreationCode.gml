// Background and UI 

instance_create_depth(0,0,1, obj_Main_Background);

var UI = instance_create_depth(0, window_get_height() - sprite_get_height(spr_UI_Back) - 5, 0, obj_UI_base);
UI.image_alpha = 0.75;

instance_create_depth(5, 5, -1, obj_max_health);
//character

display_character(250, UI.y);

//dice
var x_die_position = UI.x + 20 + sprite_get_width(asset_get_index("spr_card_back")) + (0.5 * sprite_get_width(asset_get_index("spr_Side"))); 

var top_array;

for (var i = 0; i < real(get_player_info("Dice Number")); i++) {
	var y_die_position = 20 +  UI.y + (i % 5 * (sprite_get_height(asset_get_index("spr_card_back")) + 4) + (0.5 * sprite_get_height(asset_get_index("spr_card_back"))));
	var side_number = floor(random(6));
	var top = load_side_by_number(x_die_position, y_die_position, i, side_number, true);
	top_array[i] = top;
	x_die_position = UI.x + 20 + sprite_get_width(asset_get_index("spr_card_back")) + (0.5 * sprite_get_width(asset_get_index("spr_Side"))) + (floor(i / 5) * (sprite_get_width(asset_get_index("spr_Side")) + 5)); 
}



//Abilities (Requirements - Equipment System Implementation)

//Turn Controls - Battle Flow (Req - Abilities; Enemy Implementation)

