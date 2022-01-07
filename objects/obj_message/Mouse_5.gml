/// @description Insert description here
// You can write your code in this editor

if (visible) {
	alarm[3] = 30;
	try {
		current = string_length(text);
		visible = false;
		var hero = instance_find(obj_pix_hero, 0);
		var villain = instance_find(obj_pix_villain, 0);
		hero.alarm[0] = 1;
		villain.alarm[0] = 1;
	
		if (instance_number(obj_timer) > 0) {
			var timer = instance_find(obj_timer, 0);
			for (var i = 2; i <= 3; i++) {
				if ( timer.alarm[i] > 0) timer.alarm[i] = 1;
			}
		}
	
	
	} catch (exc) {
		visible = false;
	}
}