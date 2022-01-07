/// @description Insert description here
// You can write your code in this editor

if (active) {
	draw_self();
	draw_text_ext(x+5, y+5, "To Swap Sides, select one side from a Die above, " +
	"and one side from the upgrade Sides in the bottom right corner then press the " +
	"swap button in the bottom left corner.  Press the Check button in the bottom left when you are finished.", 
	string_height("Test"), 
	sprite_get_width(spr_text) - 10);
}