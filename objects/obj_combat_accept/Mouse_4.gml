/// @description Insert description here
// You can write your code in this editor

if (active)  {
	try {
	var message = instance_find(obj_message, 0);
	if (message.visible = true) return;
	} catch (exc) {
		show_debug_message("Null")
	}

	run_combat_2();
	alarm[0] = 1.1 * room_speed;
	active = false;
	image_index = 3;
}