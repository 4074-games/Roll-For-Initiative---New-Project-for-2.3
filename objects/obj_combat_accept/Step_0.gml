/// @description Insert description here
// You can write your code in this editor

image_index = 2;

for (var i = 0; i < instance_number(obj_card); i++) {
	var obj = instance_find(obj_card, i);
	if (obj.selected) image_index = 0;
}

image_index += mouseover;