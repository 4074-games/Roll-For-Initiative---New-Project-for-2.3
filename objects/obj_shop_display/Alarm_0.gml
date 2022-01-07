/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < instance_number(obj_flat_base); i++) {
	var obj = instance_find(obj_flat_base, i);
	instance_destroy(obj);
}

flat = instance_create_depth(mouse_x, mouse_y, -5, obj_flat_base);
flat.die = die;
