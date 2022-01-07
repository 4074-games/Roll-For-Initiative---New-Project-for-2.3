/// @description Insert description here
// You can write your code in this editor

draw_self();
if (class == "Legs") draw_text(x + 6, y + 6, title + " - Off-Hand");
else if (class == "Arm") draw_text(x + 6, y + 6, title + "- Weapon");
else draw_text(x + 6, y + 6, title + " - " + class);

draw_set_color(c_yellow);
draw_text(x + (294 - (string_width(cash))), y + 6, cash);
draw_set_color(c_black);