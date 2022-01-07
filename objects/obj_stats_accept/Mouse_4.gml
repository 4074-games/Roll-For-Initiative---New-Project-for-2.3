/// @description Insert description here
// You can write your code in this editor
var unused = 0;
var total = 0;

for (var i = 0; i < instance_number(obj_up_side); i++){
	var side_value = 0;
	with (instance_find(obj_up_side, i)) {
		if (!used) {
			unused++;
			side_value += side.gold + side.attack + side.defend + side.dodge;
			side_value *= 3;
		}
		if (used) {
			side_value +=side.gold + side.attack + side.defend + side.dodge;
		}
	}
	total += side_value;
}

var response = true;
if (unused > 0) {
	if (unused > 1) response = show_question("There are " + string(unused) + " Upgradeable Sides that have not been applied, would you like to skip the remaining sides and add " + string(total) + " to your stash?");
	else show_question("There is 1 Upgradeable Side that has not been applied, would you like to skip the remaining side and add " + string(total) + " to your stash?");
}

if (!response) return;

var stash = real(get_player_info("Cash"));
stash += total;
edit_player_data("Cash", string(stash));

var _position = 0;
var _temp = get_player_info("Upgrade Side " + string(_position));
while (_temp != undefined) {
	delete_player_data("Upgrade Side " + string(_position));
	_position++;
	_temp = get_player_info("Upgrade Side " + string(_position));
}

var _position = 0;
var _temp = get_player_info("Upgrade Spent " + string(_position));
while (_temp != undefined) {
	delete_player_data("Upgrade Spent " + string(_position));
	_position++;
	_temp = get_player_info("Upgrade Spent " + string(_position));
}

for (var _i = 0; _i < 10; _i++) {
	edit_player_data("Upgrade Side " + string(_i), 0);
	delete_player_data("Upgrade Side " + string(_i));
	edit_player_data("Upgrade Spent " + string(_i), 0);
	delete_player_data("Upgrade Spent " + string(_i));
}
edit_player_data("Transition", "Map Select");

room_goto(rm_transition);