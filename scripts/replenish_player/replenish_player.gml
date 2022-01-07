/// @function replenish_player_test();
function replenish_player() {

	for (var i = 0; i < instance_number(obj_rolled_side); i++) {
		var obj = instance_find(obj_rolled_side, i);
		with (obj) {
			if (!selected) {
				usable = true;
				selected = false;
				used = false;
				rerolled = false;
				refreshed = false;
				with (obj.side) {
					var my_object = instance_place(x, y, par_pip);
					while (my_object != noone)
					{
						instance_destroy(my_object);
						var my_object = instance_place(x, y, par_pip);
					}

					var change = instance_create_depth(x, y, depth - 1, obj_auro);
					change.side = self;
					change.die = obj.die;
				}
				
//				build_player_side(side, die, floor(random(6)));
				side.image_index = 0;
				
			} else {
				usable = true;
				selected = false;
				side.image_index = 0;		
			}
		}
	}

	var timer = instance_create_depth(0, 0, 0, obj_timer);
	timer.alarm[0] = room_speed * 0.3;
}
