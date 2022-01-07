/// @description Insert description here
// You can write your code in this editor

manager.player = class;


build_start_equipment(manager, manager.player);

instance_destroy(obj_menu_display);

instance_create_depth(50, 440, 0, obj_initial_equip);

var obj = instance_find(obj_local, 0);
var obj_upgrades = obj.upgrades;


x_coord = obj_upgrades.x;
y_coord = obj_upgrades.y;

instance_destroy(obj_upgrades);

obj.upgrades = die_to_summary(x_coord, y_coord, get_player_upgrades(manager.player));