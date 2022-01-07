/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

if ((x + sprite_get_width(spr_tooltip)) > master.window_width) {
	show_debug_message("Right");
	x =- sprite_get_width(spr_tooltip);
} else {
	
}
if (y + sprite_get_height(spr_tooltip) > master.window_height) {
	y =- sprite_get_height(spr_tooltip);
} else {
	
}