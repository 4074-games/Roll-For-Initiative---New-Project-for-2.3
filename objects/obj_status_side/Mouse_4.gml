/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_fade)) return;

for (var i = 0; i < instance_number(obj_status_side); i++) {
	var obj = instance_find(obj_status_side, i);
	obj.selected = false;
	obj.usable = true;
	obj.side.image_index = 0;
}

side.image_index = 1;
selected = true;
usable = false;