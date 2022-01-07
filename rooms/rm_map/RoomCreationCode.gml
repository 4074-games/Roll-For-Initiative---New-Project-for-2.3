
edit_player_data("Transition", "Map Select");
instance_create_depth(0, 0, 10, obj_status_background);
instance_create_depth(window_get_width() - master.ui_size, master.ui_size / 2, 0, obj_money);

var _health_bar = instance_create_depth(5, 5, -1, obj_max_health);
_health_bar.player = true;

var width = sprite_get_width(spr_map_entry);
var height = sprite_get_height(spr_map_entry);

var start = instance_create_depth(width / 2, height * 3, 0, obj_map_location);
start.column = -1;
start.row = -1;
start._type = "Start";

var grid = pointer_null;

for (var _i = 0; _i < 7; _i++) {
	for (var _j = 0; _j < 6; _j++) {
		var temp = instance_create_depth(width * (_i + 1.5), master.ui_size * 1.5 + height * (_j + .5), 0, obj_map_location);
		temp._type = get_player_info("Column " + string(_i) + ", Row " + string(_j) );
		temp.column = _i;
		temp.row = _j;
		grid[_i, _j] = temp;
	}
}

var boss = instance_create_depth(width * 8.5, height * 3, 0, obj_map_location);
boss.column = 7;
boss.row = -1;
boss._type = "Boss";

var column = real(get_player_info("Column"));
var row = real(get_player_info("Row"));

if (column == -1) start.image_index = 2;

if ((column > -1) && (column < 7)) {
	grid[column, row].image_index = 2;
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
		if (row < 5) {
			grid[column + 1, row + 1].selectable = true;
		} 
		if (row > 0) {
			grid[column + 1, row - 1].selectable = true;
		}
		break;
	case 6:
		boss.selectable = true;
		break;
}

var list = ["Equipment", "Stats", "Upgrade"];
for (var i = 0; i < array_length(list); i++) {
	var temp = instance_create_depth((i+1) * (master.ui_size + 5), window_get_height() - master.ui_size, 0, obj_map_button);
	temp._value = list[i];
}

