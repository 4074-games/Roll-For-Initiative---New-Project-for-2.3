/// @description Insert description here
// You can write your code in this editor

 if (setup) {
		for (var i = 0; i < array_length(equip_list); i++) {
			instance_destroy(equip_list[i]);
		}

		var slot = instance_find(obj_equip_background, 0);
		var list = build_slot_list(class);
		for (var i = 0; i < array_length(list); i++) 
		{
			var obj = instance_create_depth(x, y + 23 + (12 * i), depth -1, obj_text_selector);
			obj.title = list[i];
			equip_list[i] = obj;
			
			
		}
	}
	
setup = false;
 