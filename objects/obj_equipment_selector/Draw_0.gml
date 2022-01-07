/// @description Insert description here
// You can write your code in this editor

//draw_self();
draw_set_color(c_black);
var obj = instance_find(obj_inventory_background, 0);

if (obj != noone) {

if (obj.class == class) draw_set_color(c_yellow);
}
if (class != "") {
	if (class == "Legs") draw_text(x, y + 3, "Off-Hand");
	else if (class == "Arm") draw_text(x, y + 3, "Weapon");
	else draw_text(x, y + 3, class);
	draw_text(x + 100, y + 3, get_player_info(class));
}
draw_set_color(c_black);
