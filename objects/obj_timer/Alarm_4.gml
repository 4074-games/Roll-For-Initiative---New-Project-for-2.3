/// @description Insert description here
// You can write your code in this editor

var i = 0;
for (i = 0; i < real(get_player_info("Dice Number")); i++) {
	instance_find(obj_shop_display, i).display.image_index = 0;
}
instance_find(obj_shop_display, i).display.image_index = 2;