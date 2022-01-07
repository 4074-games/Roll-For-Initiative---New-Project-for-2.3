/// @description Insert description here
// You can write your code in this editor

var my_object = instance_place(x, y, par_pip);
while (my_object != noone)
{
	instance_destroy(my_object);
	var my_object = instance_place(x, y, par_pip);
}

var change = instance_create_depth(x, y, depth - 1, obj_auro);
change.side = self.side; 
