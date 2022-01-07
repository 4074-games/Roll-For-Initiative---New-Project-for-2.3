/// @description Insert description here
// You can write your code in this editor

if (usable && rerolled) {
	side.image_index = 3;
	return;
}

if (used && rerolled) {
	side.image_index = 6;
	return;
}

if (selected && rerolled) {
	side.image_index = 4;
	return;
}

if (selected) {
	side.image_index = 1;
	return;
}

if (used) {
	side.image_index = 2;
	return;
}

if (usable) {
	side.image_index = 0;
	return;
}