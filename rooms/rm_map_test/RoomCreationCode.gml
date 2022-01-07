//UI Background

instance_create_depth(0, 0, 10, obj_status_background);

//Create Player Location within File
edit_player_data("Column", "-1");
edit_player_data("Row", "-1");

//Create Map Entries
var width = sprite_get_width(spr_map_entry);
var height = sprite_get_height(spr_map_entry);

var start = instance_create_depth(width / 2, height * 3, 0, obj_map_location);
start.column = -1;
start.row = -1;
var temp = pointer_null;

randomise();
//var types = ["Battle", "Equipment", "Elite", "Event"];
var types = ["Battle", "Equipment", "Elite"];
for (var _i = 0; _i < 7; _i++) {
	for (var _j = 0; _j < 6; _j++) {
		temp  = instance_create_depth(width * (_i + 1.5), height * (_j + .5), 0, obj_map_location);
		temp.column = _i;
		temp.row = _j;
		temp.type = types[floor(random(array_length(types)))];
	}
}
var boss = instance_create_depth(width / 2 + width * 8, height * 3, 0, obj_map_location);
boss.column = 7;
boss.row = -1;
boss.type = "Boss";