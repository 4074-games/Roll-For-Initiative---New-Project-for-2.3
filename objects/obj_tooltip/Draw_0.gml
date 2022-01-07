/// @description Insert description here
// You can write your code in this editor

if (master.tooltip != "") {
	draw_self();
	switch (sprite_get_xoffset(spr_tooltip)) {
		case 0:
			x_location = 5;
			break;
		default:
			x_location = sprite_get_width(spr_tooltip) * -1 + 5;
			break;
	}
	switch (sprite_get_yoffset(spr_tooltip)) {
		case 0:
			y_location = 5;
			break;
		default:
			y_location = sprite_get_height(spr_tooltip) * -1 + 5;
			break;
	}
	
	draw_text_ext(x + x_location, y + y_location, master.tooltip, string_height("M"), sprite_get_width(spr_tooltip) - 10);			
}