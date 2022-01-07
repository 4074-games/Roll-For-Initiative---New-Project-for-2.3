/// @description Insert description here
// You can write your code in this editor

if (!selectable) {
	show_message("Please select a side from the Dice you have purchased on the right.");
	return;
}

if (- 1 * value > floor(get_player_info("Cash")) ) {
	show_message("You do not have enough money to purchase this side.");
	return;
}

edit_player_data("Cash", floor(get_player_info("Cash")) + value);



for (var i = 0; i < instance_number(obj_shop_adjustable); i++) {
	var obj = instance_find(obj_shop_adjustable, i);
	if (obj.selected) {
		var buyable = instance_find(obj_buyable_side, 0);
		edit_player_data("Dice " + string(obj.die) + ", Side " + string(obj.number), side_to_string(buyable.side));
	}
	
}

instance_destroy(obj_shop_adjustable);

for (var i = 0; i < floor(get_player_info("Dice Number")); i++) {
	var obj = instance_find(obj_shop_display, i);
	obj.display.image_index = 0;
}
