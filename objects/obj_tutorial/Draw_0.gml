/// @description Insert description here
// You can write your code in this editor

switch (help) {
	case "shop": 
	draw_set_color(c_aqua);
	switch (message_box.line_count) {
		case 0:
			draw_rectangle(910, 40, 979, 109, 20);
			break;
		case 1:
			draw_rectangle(512, 70, 566, 340, 20);
			break;
		case 2:
			draw_rectangle(225, 70, 465, 130, 20);
			break;
		case 3:
			draw_rectangle(405, 230, 475, 300, 20);
			break;
		case 4:
			draw_rectangle(225, 240, 285, 300, 20);
			break;
		default:
			break;
	}
	default:
		draw_set_color(c_black);
		break;
}

