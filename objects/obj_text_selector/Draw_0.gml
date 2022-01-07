/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
//draw_self();

var item = title;
if (check_for_equipped(item)) {
	draw_set_color(c_yellow)
} else {
	draw_set_color(c_black);
}
	
draw_text(x, y + 3, item);
draw_set_color(c_black);