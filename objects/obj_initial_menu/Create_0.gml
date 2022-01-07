/// @description Insert description here
// You can write your code in this editor

buttons = ["New Game", "Continue Run", "Reset Tutorials", "Introduction"];



instance_create_depth(0,0, 10, obj_Main_Background);
instance_create_depth(window_get_width() * 5 / 16, 40, 9, obj_logo);

for ( var i = 0; i < array_length(buttons); i++) {
	var button = instance_create_depth(x + 50, y + 100 + ( i * 60), 0, obj_Menu_button);
	button.title = buttons[i];
	if ((get_player_info("Life") <= 0) && (buttons[i] == "Continue Run")) {
		button.image_index = 3;
	}

}

instance_create_depth(1024 - 50 - sprite_get_width(spr_menu_button), 100, 0, obj_menu_class);

