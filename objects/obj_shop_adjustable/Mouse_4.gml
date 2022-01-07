/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_fade)) return;

for (var i = 0; i < 6; i++) {
	var obj = instance_find(obj_shop_adjustable, i);
	obj.selected = false;
}

selected = true;