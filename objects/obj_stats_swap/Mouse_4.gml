/// @description Insert description here
// You can write your code in this editor

if (!available) {
	show_debug_message("No");	
	return;
}

show_debug_message("Button Test");
var _manager = instance_find(asset_get_index("obj_Manager"), 0);
var _str = "obj_top";
for (_i = 0; _i < instance_number(asset_get_index(_str)); _i++) {
	var _obj = instance_find(asset_get_index(_str), _i);
	if (master.debug == 1) show_debug_message("Object Called " + string(_i));
	if (_obj.selected == true) {
		var _die = _obj.dice;
		var _side = _obj.side.side_number;
		
		break;
	}
}

_str = "obj_up_side";
for (var _i = 0; _i < instance_number(asset_get_index(_str)); _i++) {
	var _obj = instance_find(asset_get_index(_str), _i);
	if (master.debug == 1) show_debug_message("Object Called " + string(_i));
	if (_obj.selected == true) {
		var _side_2 = string(_i);
	}
}
	
var temp = get_player_info("Dice " + string(_die) + ", Side " + string(_side));	
edit_player_data("Dice " + string(_die) + ", Side " + string(_side), get_player_info("Upgrade Side " + string(_side_2)));	
edit_player_data("Upgrade Side " + _side_2, temp)

	
if (master.debug == 2) show_debug_message("Die " + string(_die));	
if (master.debug == 2) show_debug_message("Side " + string(_side));	
if (master.debug == 2) show_debug_message("Side2 " + _side_2);	
	
_manager.upgrade_list[floor(_side_2)] = temp;
var _spent = 0;
var _temp = get_player_info("Upgrade Spent " + string(_spent));
while (_temp != undefined) {
	_spent++;
	_temp = get_player_info("Upgrade Spent " + string(_spent));
}
_manager.upgrade_spent[_spent] = floor(_side_2);

edit_player_data("Upgrade Spent " + string(_spent), _side_2); 
room_goto(rm_stats);