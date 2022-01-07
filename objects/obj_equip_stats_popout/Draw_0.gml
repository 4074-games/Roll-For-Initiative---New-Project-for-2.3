/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_text(x + 6, y + 6, "Costs");
draw_text(x + 160, y + 6, "Effects");

if (title != "") {
	draw_text(x+ 10, y + 52, "Attack - " + string(eq.attack));
	draw_text(x + 10, y + 86, "Defend - " + string(eq.defend));
	draw_text(x + 10, y + 112, "Dodge - " + string(eq.dodge));
	
	draw_text(x + 164, y + 52, "Power - " + string(eq.str));
	draw_text(x + 164, y + 86, "Speed - " + string(eq.dex));
	draw_text(x + 164, y + 112, "Sp Power - " + string(eq.spell_power));
}