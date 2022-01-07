/// @description Insert description here
// You can write your code in this editor
try {
	var message = instance_find(obj_message, 0);
	if (message.visible = true) return;
} catch (exc) {
	show_debug_message("Null")
}

if ((usable) && (!disrupted)) {
	disrupted = true;
	usable = false;
	side.image_index = 4;
	return;
}

if (disrupted) {
	disrupted = false;
	usable = true;
	side.image_index = 0;
	return;
}