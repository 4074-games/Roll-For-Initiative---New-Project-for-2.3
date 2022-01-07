/// @description Insert description here
// You can write your code in this editor

player = false;
enemy = false;

_str = object_get_name(object_index);

_str = string_copy(_str, 11, string_length(_str) - 10);

switch (_str) {
	case "Armor" :
		image_index = 0;
		break;
	case "Power" :
		image_index = 1;
		break;
	case "Speed" :
		image_index = 2;
		break;
}
	
