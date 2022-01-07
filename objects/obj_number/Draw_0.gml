/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_number);
if (class == "Damage") draw_set_color(c_red);
if (class == "Armor") draw_set_color(c_aqua);
if (class == "Heal") draw_set_color(c_lime);

draw_text(x, y, string(number));
draw_set_font(fnt_main);
draw_set_color(c_black);
