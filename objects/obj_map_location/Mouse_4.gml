/// @description Insert description here
// You can write your code in this editor

if (selectable) {
	edit_player_data("Column", string(column));
	edit_player_data("Row", string(row));
	switch (_type) {
		case "Battle":
			edit_player_data("Transition", "Enemy Combat Prep");
			break;
		case "Elite":
			edit_player_data("Transition", "Elite Combat Prep");
			break;
		case "Boss":
			edit_player_data("Transition", "Boss Combat Prep");
			break;
		case "Equipment":
			edit_player_data("Transition", "Equipment Get");
			break;
		case "Shop":
			edit_player_data("Transition", "Shop Setup");
	}
	room_goto(rm_transition);
}