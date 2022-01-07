/// @description Insert description here
// You can write your code in this editor

slots = ["Head", "Arm", "Legs", "Chest", "Charm", "Feet"];

for (var i = 0; i < array_length(slots); i++) {
	var button = instance_create_depth(x, y + (i * 25), -1, obj_menu_display);
	button.class = slots[i];
}