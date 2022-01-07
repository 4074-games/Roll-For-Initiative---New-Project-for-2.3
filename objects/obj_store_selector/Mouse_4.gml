/// @description Insert description here
// You can write your code in this editor

if (eq.cash > floor(get_player_info("Cash"))) return;

edit_player_data("Cash", string(floor(get_player_info("Cash") - eq.cash)));

var i = 0;
var obj = get_player_info("Inventory" + string(i));
while (obj != undefined) {
	i++;
	obj = get_player_info("Inventory" + string(i));
}
edit_player_data("Inventory" + string(i), eq.title);
instance_destroy(self);
instance_find(obj_inventory_background, 0).setup = true;
