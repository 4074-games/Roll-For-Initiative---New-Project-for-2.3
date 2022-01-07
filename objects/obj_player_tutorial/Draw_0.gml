/// @description Insert description here
// You can write your code in this editor

if (active) {
	draw_self();
	draw_text_ext(x + 35, (master.ui_size  / 4) + y + 20 + 0 * (master.ui_size / 2) - string_height("T") / 2, "Usable dice are ready to be used to power skills", 0, sprite_get_width(spr_text));
	draw_text_ext(x + 35, (master.ui_size  / 4) + y + 20 + 1 * (master.ui_size / 2) - string_height("T") / 2, "Selected Dice are chosen to power skills (Left Click a Usable Die)", 0, sprite_get_width(spr_text));
	draw_text_ext(x + 35, (master.ui_size  / 4) + y + 20 + 2 * (master.ui_size / 2) - string_height("T") / 2, "Used Dice are able to be refreshed to be used again.", 0, sprite_get_width(spr_text));
	draw_text_ext(x + 35, (master.ui_size  / 4) + y + 20 + 3 * (master.ui_size / 2) - string_height("T") / 2, "Rerollable Dice are ready to be used, but need to be rerolled (Right Click a Usable Die)", 0, sprite_get_width(spr_text));
	draw_text_ext(x + 35, (master.ui_size  / 4) + y + 20 + 4 * (master.ui_size / 2) - string_height("T") / 2, "Refreshed Dice can be rerolled and refreshed to use again (Left Click a Used Die or right click a selected die.)", 0, sprite_get_width(spr_text));

}