// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function die_to_summary(x, y, die){
	var result = instance_create_depth(x, y, -4, obj_flat_base);
	for (var i = 0; i < 6; i++) {
		read_side_from_string(result.side[i].side, die.side[i]);
	}
	return result;
}