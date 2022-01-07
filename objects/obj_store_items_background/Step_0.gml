/// @description Insert description here
// You can write your code in this editor

if (setup) {
	var i = 0;
	while (true) {
		var text = get_player_info("Shop Item " + string(i));
		if (text == undefined) break;
		i++;				
	}
	
	for (var j = 0; j < i; j++) {
		var obj = instance_create_depth(x + 5 + floor(j / 6) * 175, y + 5 + (j % 6) * 25, 0, obj_store_selector); 
		obj.position = j;
	}
	
	setup = false;
}