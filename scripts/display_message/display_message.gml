// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_message(array){
	if (instance_number(obj_message) == 0) {
		var obj = instance_create_depth(window_get_width() / 4, window_get_height() / 2, -20, obj_message);;
	} else {
		var obj = instance_find(obj_message, 0);
	}
	obj.input = array;
	obj.visible = true;
	obj.alarm[0] = 10;
	master.message_box = true;
}

function display_tutorial(array, help) {
	if (instance_number(obj_message) == 0) {
		var obj = instance_create_depth(window_get_width() / 4, window_get_height() / 2, -20, obj_message);;
	} else {
		var obj = instance_find(obj_message, 0);
	}
	obj.input = array;
	obj.visible = true;
	obj.alarm[0] = 10;
	obj.tutorial.help = help;
}