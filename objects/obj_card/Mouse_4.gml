/// @description Insert description here
// You can write your code in this editor

if (master.debug == 2) show_debug_message(title);

//if (selectable && !selected) {
//	border.x = x;
//	border.y = y;
//	border.active = true;
//	selected = true;
//	return;
//}

//if (selectable && selected) {
//	border.active = false;
//	selected = false;
//	return;
//}

if (!selectable) return;

if (selectable && selected) {
	selected = false;
	return;
}


for (var i = 0; i < instance_number(obj_card); i++) {
	var obj = instance_find(obj_card, i);
	with (obj) {
		obj.selected = false;
	}
}


selected = true;
