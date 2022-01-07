/// @description Insert description here
// You can write your code in this editor


if ((display.image_index == 0) || (display.image_index == 1)) {
	if (place_meeting(x, y, obj_fade)) return;

	if (!active) return;

	for (var i = 0; i < floor(get_player_info("Dice Number")); i++) {
		var obj = instance_find(obj_shop_display, i);
		obj.display.image_index = 0;
	}

	display.image_index = 1;


	sides = instance_number(obj_shop_adjustable);

	for (var i = sides; i >= 0; i--) {
		instance_destroy(instance_find(obj_shop_adjustable, i));
	}

	var base_x = 870;
	var base_y = 100;
	var obj = pointer_null;
	for (var i = 0; i < 4; i++) {
		//670, 100
		obj[i] = instance_create_depth(base_x, base_y + (i * (master.ui_size)), -5, obj_shop_adjustable);
		obj[i].die = die;
		obj[i].number = i;
	}

	obj[4] = instance_create_depth(base_x - master.ui_size, base_y + master.ui_size, -5, obj_shop_adjustable);
	obj[4].die = die;
	obj[4].number = 4;
	
	obj[5] = instance_create_depth(base_x + master.ui_size, base_y + 2 * master.ui_size, -5, obj_shop_adjustable);
	obj[5].die = die;
	obj[5].number = 5;

	for (var i = 0; i < 6; i++) {
		side_value = get_player_info("Dice " + string(obj[i].die) + ", Side " + string(obj[i].number));
		read_side_from_string(obj[i].side, side_value);
	}
} else if ((display.image_index == 2) && (floor(get_player_info("Cash") >= 20))) 	{
	display.image_index = 0;
	edit_player_data( "Cash" , string(floor(get_player_info("Cash") - 20)));
	var current = get_player_info("Dice Number");
	show_debug_message(current);
	edit_player_data( "Dice Number" , string(floor(get_player_info("Dice Number")) + 1));
		for (var i = 0; i < 6; i++) {
		edit_player_data("Dice " + string(floor(current) + 1)  + ", Side " + string(i), "0");
	}
	if (current < 19) {
		instance_find(obj_shop_display, floor(current) + 1).display.visible = true;
		instance_find(obj_shop_display, floor(current) + 1).display.image_index = 2;
	}
}
	
	
