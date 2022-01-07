/// @description Insert description here
// You can write your code in this editor


var string_array = ["1000", "100", "10", "1"]

//Adding Sides
for (var i = 0; i < 4; i++) {
	side[i] = instance_create_depth(x + 32 + (i * (master.ui_size + 3)), y + 47, depth, obj_shop_adjustments);
	read_side_from_string(side[i].side , string_array[i]);
}

//Buyable_Side
instance_create_depth(x + 30, y + 250 - 30, depth, obj_buyable_side);

//Cost Display
instance_create_depth(x + 250 - 120, y + 250 - 46, depth - 1, obj_build_a_side_help);
instance_create_depth(x + 250 - 60, y + 250 - 60, depth, obj_cost);
