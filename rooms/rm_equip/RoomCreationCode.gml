
var equip_list = get_player_info("Inventory");
// Background
var background = instance_create_depth(0, 0, 10, obj_store_background);

var _health_bar = instance_create_depth(5, 5, -1, obj_max_health);
_health_bar.player = true;

// Equipped Items
var weapon = load_equipment_by_name(get_player_info("Arm"));
var leg = load_equipment_by_name(get_player_info("Legs"));
var charm = load_equipment_by_name(get_player_info("Charm"));
weapon.active = true;
leg.active = true;
charm.active = true;

//Position
var x_equipped = master.ui_size;
//Divide the top into 3 Equal Sized Slices.
var offset = (window_get_height() - (master.ui_size / 2)) / 6;

weapon.x = x_equipped;
leg.x = x_equipped;
charm.x = x_equipped;

weapon.y = offset;
leg.y = offset * 2;
charm.y = offset * 3;

display_skill_list(create_player_skill_list(), master.ui_size, (window_get_height() / 2) + 50 );


// Unequipped Items
var x_coordinate = window_get_width() / 2;
var i = 0;
var temp = get_player_info("Inventory0");
while (temp != undefined) 
{
	var temp_equip = load_equipment_by_name(temp);
	temp_equip.x = x_coordinate + floor(i / 5) * master.ui_size;
	temp_equip.y = master.ui_size + ((i % 5) + 1) * (master.ui_size + 25);
	temp_equip.active = true;
	temp_equip.position = i;
	i++;
	temp = get_player_info("Inventory" + string(i));
}

// Found Items
/*
if (get_player_info("Found Item") != undefined) {
	var found = load_equipment_by_name(get_player_info("Found Item"));
	found.x = window_get_width() * 3 / 4;
	found.y = window_get_height() * 3 / 4;
	found.active = true;
	
}
*/

// UI_element

instance_create_depth(window_get_width() - master.ui_size,  master.ui_size, 0, obj_equip_accept);