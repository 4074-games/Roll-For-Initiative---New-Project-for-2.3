///adjust_side(side, attack, defend, dodge)
function adjust_side(side, inc_attack, inc_defend, inc_dodge, inc_gold) {

	with (side) {
			if ((attack + defend + dodge + gold + inc_attack + inc_defend + inc_dodge + inc_gold) <= 9) {
				attack += inc_attack;
				defend += inc_defend;
				dodge += inc_dodge;
				gold += inc_gold;
			//if (master.debug == 1) show_debug_message("Update Side Call");
			var my_object = instance_place(x, y, obj_pip);
			while (my_object != noone)
			{
				instance_destroy(my_object);
				var my_object = instance_place(x, y, obj_pip);
			}
		update = true;
		}
	}



}
