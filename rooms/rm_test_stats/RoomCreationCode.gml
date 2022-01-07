instance_create_depth(0, 0, 0, obj_Main_Background);
// Dice
for (var i = 0; i < 20; i++) {
	var obj = instance_create_depth(
		75 + (floor(i / 5) * (master.ui_size + 5)), 
		75 + (i % 5) * (master.ui_size + 5),
		0, 
		obj_stats_display);
	var dice = (i % 5) + 1;
	read_side_from_string(obj.display, string(dice * 1000 / power(10, floor(i / 5))));
	if (i >= real(get_player_info("Dice Number"))) {
		obj.display.visible = false;
	}
	obj.die = i;
}


// Sides
var i = 0;
var obj_string = get_player_info("Upgrade Side " + string(i));
while (obj_string != undefined) {
	var obj = instance_create_depth(
		window_get_width() - (1.5 * master.ui_size) - (master.ui_size * i), 
		window_get_height() - (1.5 * master.ui_size),
		-1, 
		obj_status_side);
	obj.die = i;
	read_side_from_string(obj.side, obj_string);
	i++;
	obj_string = get_player_info("Upgrade Side " + string(i));
}

//Skills
var _skill_list = create_player_skill_list();



for (var i = 0; i < array_length(_skill_list); i++) {
	show_debug_message(_skill_list[i].title);
	_skill_list[i].selectable = true;
	_skill_list[i].detail.title = _skill_list[i].title;
	//_skill_list[i].depth = 10;
}

//// Equipment
instance_create_depth(20, 420, -2, obj_equip_background);
//instance_create_depth(380, 445, -2, obj_inventory_background);


// UI
instance_create_depth(640, 355, -1, obj_side_swap);
instance_create_depth(700, 355, -1, obj_status_accept);
instance_create_depth(945, 75, -1, obj_money);

// Status
instance_create_depth(315, 50, -1, obj_health);

if (get_tutorial_status("stats")) {
	var output = array_create(0);
	output[0] = "Alright then, upgrades.";
	output[1] = "So you just won a fight and want to level up.";
	output[2] = "Easy enough, so you have your dice in the top right, You can hover one to see a Summary,";
	output[3] = "or click one to bring up all 6 of its sides.";
	output[4] = "Down in the bottom right, you'll find the sides that you've rolled into for upgrades."; 
	output[5] = "So click a side on the die to the top right, an upgrade side on the bottom left.";
	output[6] = "Then click on the Arrows between them to swap the sides out.";
	output[7] = "When you're done, click the checkmark to move on.";
	display_message(output);
	add_tutorial_status("stats", "0");

	
}