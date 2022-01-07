/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < instance_number(obj_shop_adjustable); i++) {
	var old = instance_find(obj_shop_adjustable, i);
	
	if (old.selected) {
		var new_side = instance_find(obj_buyable_side, 0);
		value = old.side.pips * old.side.pips - 2 * (new_side.side.pips * new_side.side.pips);
		//show_debug_message(string(value));
		sprite_set_speed(spr_build_a_side_cost, 15, spritespeed_framespersecond);
		selectable = true;
		return;
	}
}
selectable = false;
sprite_set_speed(spr_build_a_side_cost, 0, spritespeed_framespersecond);
value = -999;