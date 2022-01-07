
instance_create_depth(0, 0, 10, obj_map_pix_bg);
instance_create_depth(0, 0, 15, obj_Main_Background);

var width = sprite_get_width(spr_map_Battle) * 2;
var height = sprite_get_height(spr_map_Battle) * 2;


for (var _i = 0; _i < 10; _i++) {
	for (var _j = 0; _j < 6; _j++) {
		var temp = instance_create_depth(200 + width * (_i - 2.75 + 1.5), master.ui_size * 1.5 + height * (_j + 1), 0, obj_pix_map);
		temp._type = get_player_info("Column " + string(_i) + ", Row " + string(_j) );
		temp.column = _i;
		temp.row = _j;
		grid[_i, _j] = temp;
	}
}

var column = real(get_player_info("Column"));
var row = real(get_player_info("Row"));
show_debug_message("Column : " + get_player_info("Column"));
show_debug_message("Row : " + get_player_info("Row"));

var boss = instance_create_depth(width * 11.5, height * 4, 0, obj_pix_map);
boss.column = 10;
boss.row = -1;
boss._type = "boss";

if (column > -1) {
	for (var passed = 0; passed <= column + 1; passed++) {
		if (passed == 7) break;
		for (var i = 0; i < array_length(grid[0]); i++) {
			grid[passed, i].passed = true;
		}
	}
}

if ((column > -1) && (column < 10)) {
	grid[column, row].passed = false;
	grid[column, row].current = true;
}

for (var i = 0; i < column; i++) {
	grid[i , real(get_player_info("Path " + string(i)))].pathed = true;
}

switch (column) {
	case -1:
		for (var _i = 0; _i < 6; _i++) {
			grid[0, _i].selectable = true;
		}
		break;
	case 0:
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
		if (row < 5) {
			grid[column + 1, row + 1].selectable = true;
			grid[column + 1, row + 1].passed = false;
		} 
		if (row > 0) {
			grid[column + 1, row - 1].selectable = true;
			grid[column + 1, row - 1].passed = false;
		}
		break;
	case 9:
		boss.selectable = true;
		break;
}

if (get_tutorial_status("map")) {
	var output = array_create(0);
	output[0] = "Welcome to your adventures.";
	output[1] = "This is where you'll navigate your challenges.";
	output[2] = "As you Navigate across the map, you'll encounter a number of challenges.";
	output[3] = "The first three columns will allow you to plant the seeds of your journey.";
	output[4] = "After that you can equip yourself in the shop.";
	output[5] = "Then you will get into the real enemies.";
	output[6] = "One more thing, everything begins with the Dice here...";
	output[7] = "so why shouldn't movement, you can only move diagonally as you progress across the map.";
	output[8] = "So plan carefully. Good Rolling.";
	display_message(output);
	add_tutorial_status("map", "0");
}

if ((get_player_info("Column") == "9") && (load_from_meta("Wizard", "Requirement") == "0")) {
	var output = array_create(0);
	output[0] = "Congratulations, you have unlocked the Wizard.";
	display_message(output);
	enable_player("Wizard", "1");

}

if (get_player_info("Column") == "10") {
	var output = array_create(0);
	output[0] = "Congratulations, you've cleared the demo, if you've enjoyed this please support the launch on kickstarter.";
	output[1] = "Thanks for playing.";
	display_message(output);
	
}

