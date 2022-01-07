/// @description Insert description here
// You can write your code in this editor

//draw_set_font(fnt_skill);
if (!selected) {
	image_index = 0;
	draw_set_color($434154);
}

if (selected) {
	image_index = 1;
	draw_set_color(c_white);
}

if (active == true)  {
	draw_self();
	//show_message(string(x));
	
	
	draw_text_ext(x + 14, y + 14, title, 12, 160);
	

	//draw_text_ext(
	//	x + 7, 
	//	y + 1.5 * font_vert, 
	//	build_string_from_card(self), 
	//	1.35 * font_vert-3, 
	//	width - 5
	//);
	
	
}
draw_set_font(fnt_main);
draw_set_color(c_black);