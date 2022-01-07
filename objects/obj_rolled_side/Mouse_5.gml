/// @description Insert description here
// You can write your code in this editor

//build_player_side(side, die, floor(random(6)));
try {
	var message = instance_find(obj_message, 0);
	if (message.visible = true) return;
} catch (exc) {
	show_debug_message("Null")
}

if (rerolled) {
	rerolled = false;
} else {
	rerolled = true;
}

//if (usable) {
//	rerolled = true;
//	usable = false;
//	side.image_index = 3;
//	return;
//}

//if (selected && refreshed) {
//	refreshed = false;
//	side.image_index = 1;
//	return;
//}

//if (rerolled) {
//	usable = true;
//	rerolled = false;
//	side.image_index = 0;
//	return;
//}

//if (selected) {
//	refreshed = true;
//	side.image_index = 5;
//	return;
//}

//if (used) {
//	rerolled = true;
//	side.image_index = 6;
//	return;
//}

