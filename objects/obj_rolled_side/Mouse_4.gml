/// @description Insert description here
// You can write your code in this editor
try {
	var message = instance_find(obj_message, 0);
	if (message.visible = true) return;
} catch (exc) {
	show_debug_message("Null")
}


if (usable) {
	usable = false;
	selected = true;
	return;
}

if (selected) {
	usable = true;
	selected = false;
	used = false;
	rerolled = false;
	refreshed = false;
	return;
}




//if (usable) {
//	usable = false;
//	selected = true;
//	side.image_index = 1;
//	return;
//}

//if (selected) {
//	usable = true;
//	selected = false;
//	refreshed = false;
//	side.image_index = 0;
//	return;
//}

////if (used) {
////	used = false;
////	refreshed = true;
////	side.image_index = 4;
////	return;
////}

//if (refreshed) {
//	used = true;
//	refreshed = false;
//	side.image_index = 2;
//	return;
//}