/// @description Insert description here
// You can write your code in this editor

switch (help) {
	case "shop": 
		switch (message_box.line_count) {
			case 0:
				break;
			case 1:
				break;
			case 2:
				break;
			case 3:
				break;
			case 4:
				break;
			default:
				break;
		}
		break;
	case "Introduction" :
		switch (message_box.line_count) {
			case 0:
				if (obj == pointer_null) {
					obj = instance_create_depth(window_get_width() - 300, window_get_height() / 2, -40, obj_tutorial_card);
				}
				break;
			case 5: 
				obj.image_index = 2;
				break;
			case 6:
				obj.image_index = 3;
				break;
			case 7:
				obj.image_index = 4;
				break;
			case 9:
				instance_destroy(obj_tutorial_card);
				break;
			default:
			
				break;
		}
		
	
	
	default:
		draw_set_color(c_black);
		break;
}

