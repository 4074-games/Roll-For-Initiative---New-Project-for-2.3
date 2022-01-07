/// @description Insert description here
// You can write your code in this editor
//["Equipment", "Stats", "Upgrade"]

master.tooltip = "";
if (_value == "Equipment") {
	room_goto(rm_equip);
	return;
}
if (_value == "Stats") {
	room_goto(rm_stats);
	return;
}
if (_value == "Upgrade") {
	room_goto(rm_upgrade);
	return;
}

if (_value = "Shop Stats") {
	room_goto(rm_stats_shop);
}