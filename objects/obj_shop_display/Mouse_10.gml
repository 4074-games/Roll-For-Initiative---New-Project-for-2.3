/// @description Insert description here
// You can write your code in this editor
active = display.visible;
if (!active) return;

flat = instance_create_depth(mouse_x, mouse_y, -10, obj_flat_base);
flat.die = die;
	