/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < 20; i++) {
	var obj = instance_create_depth(x + 27 + floor(i/5) * master.ui_size, y + 47 + (i % 5) * master.ui_size, depth, obj_shop_display);
	var dice = (i % 5) + 1;
	read_side_from_string(obj.display, string(dice * 1000 / power(10, floor(i / 5))));
	if (i > real(get_player_info("Dice Number"))) {
		obj.display.visible = false;
		
	}
	if ( i = real(get_player_info("Dice Number"))) {
		obj.display.image_index = 2;
	}
	
	obj.die = i;
}