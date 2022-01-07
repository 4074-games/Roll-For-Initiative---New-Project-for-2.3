/// @description Insert description here
// You can write your code in this editor

//draw_self();
draw_set_color(c_black);
if (class != "") {
	if (class == "Legs") draw_text(x, y + 3, "Off-Hand");
	else if (class == "Arm") draw_text(x, y + 3, "Weapon");
	else draw_text(x, y + 3, class);
	draw_text(x + 100, y+3, eq.title);
}