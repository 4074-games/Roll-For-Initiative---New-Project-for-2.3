/// @function set_side(target_side, source_side)
/// @param target_side {side}
/// @param source_side {side}
function set_side(argument0, argument1) {

	with (argument0) {
			gold = argument1.gold;
			attack = argument1.attack;
			defend = argument1.defend;
			dodge  = argument1.dodge;
			var my_object = instance_place(x, y, obj_pip);
			while (my_object != noone)
			{
				instance_destroy(my_object);
				var my_object = instance_place(x, y, obj_pip);
			}
		self.update = true;
		}




}
