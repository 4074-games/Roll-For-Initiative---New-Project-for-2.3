/// @description Insert description here
// You can write your code in this editor

//draw_set_color(c_black)
//var i = 0;
//var item = get_player_info("Inventory" + string(i));
//while (true) {
//	if (check_for_equipped(item)) {
//		draw_set_color(c_yellow)
//	} else {
//		draw_set_color(c_black);
//	}
	
//	draw_text(x + 5 + floor(i /4) * 200 , y + 27 + (i % 4) * 25, item);
//	i++;
//	item = get_player_info("Inventory" + string(i));
	
//	if (item == undefined) {
//		break;
//	}
//}

draw_set_color(c_white);
draw_text(x, y, "Inventory");
draw_set_color(c_black);