/// @description Insert description here
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;

active = false;
display = instance_create_depth(x, y, -1, obj_Side);
die = -1;

flat = pointer_null;

mouse = instance_find(obj_mouse, 0);

mouse_over = false;