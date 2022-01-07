instance_create_depth(0, 0, 10, obj_store_background);
instance_create_depth(window_get_width() - master.ui_size * 1, master.ui_size / 2, 0, obj_money);
instance_create_depth(window_get_width() - master.ui_size * 2, master.ui_size / 2, 0, obj_equip_accept);
var temp = instance_create_depth(window_get_width() - master.ui_size * 3, master.ui_size / 2, 0, obj_map_button);
temp.value = "Shop Stats";
var _health_bar = instance_create_depth(5, 5, -1, obj_max_health);
_health_bar.player = true;

edit_player_data("Transition", "Shop");
var i = 0;
var temp =  get_player_info("Shop Item " + string(i));
var equipment = array_create(0);
while (temp != undefined) {
	equipment[i] = load_equipment_by_name(temp);
	equipment[i].shop = true;
	equipment[i].position = i;
	equipment[i].active = true;
	i++;
	var temp =  get_player_info("Shop Item " + string(i));
}

for (var i = 0; i < array_length(equipment); i++) {
	equipment[i].x = 100 + (i *5);
	equipment[i].y = (window_get_height() / 16) + (i * (string_height("M") + 2) ) ;
	equipment[i].depth = (i * - 5) - 10;
	equipment[i].default_depth = (i * - 5) - 10;
	equipment[i].visible = true;
}

var equip_list = ["Arm", "Legs", "Charm", "Head", "Chest", "Feet"];
for (var i = 0; i < array_length(equip_list); i++) {
	temp = load_equipment_by_name(get_player_info(equip_list[i]));
	temp.x = master.ui_size + 100 * i;
	temp.y = window_get_height() / 2 + (i * (string_height("M") + 2) );
	temp.depth = (i* -5) -10;
	temp.default_depth = (i * - 5) - 10;
	temp.active = true;
	temp.equipped = true;
}



var i = 0;
temp =  get_player_info("Inventory" + string(i));
var inventory = array_create(0);
while (temp != undefined) {
	inventory[i] = load_equipment_by_name(temp);
	inventory[i].position = i;
	inventory[i].active = true;
	i++;
	var temp =  get_player_info("Inventory" + string(i));
}

for (var i = 0; i < array_length(inventory); i++) {
	inventory[i].x = window_get_width()/2 + floor(i/4)*master.ui_size;
	inventory[i].y = window_get_height() /2 + (i % 4) * (master.ui_size + 30);
}