/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_main);
draw_set_color(c_black);
draw_text(x + (sprite_get_width(spr_menu_button) / 2) - (string_width(title) / 2),
			y + (sprite_get_height(spr_menu_button) / 2) - (string_height(title) / 2),
			title);