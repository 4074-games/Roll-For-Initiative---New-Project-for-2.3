/// @description Insert description here
// You can write your code in this editor

draw_self();
if (value > -999) {
	if (value >= 0) { 
		draw_set_color(c_black); 
	} else {
		draw_set_color(c_red);
	}
	 
	draw_text(x + 27 - string_width(string(abs(value))) / 2, y + 20, string(abs(value)));
}

else draw_text(x + 27 - string_width("-") / 2, y + 20, "-");
draw_set_color(c_black);