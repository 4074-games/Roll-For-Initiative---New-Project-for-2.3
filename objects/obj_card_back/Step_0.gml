/// @description Insert description here
// You can write your code in this editor

if (moving && !enemy && (x <= initial_x + 240)) {
	x += 8;
	show_debug_message("x = " + string(x));  
}

if (returning && !enemy && (x > initial_x)) {
	x -= 16;
}

if (returning && !enemy && (x <= initial_x)) {
	visible = false;
}