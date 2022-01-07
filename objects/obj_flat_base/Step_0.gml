/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < 6; i++) {
	side[i].visible = visible;
}

if (setup) {
	for (var i = 0; i < 6; i++) {
		if (die != -1) read_side_from_string(side[i].side, get_player_info("Dice " + string(die) + ", Side " + string(i)));
		side[i].setup = true;
		
	}	
	setup = false;
}

if (die == -1) return;

x = mouse_x;
if (mouse_y > window_get_height() - 200)  {
	y = mouse_y - 170;
} else {
	y = mouse_y;
}
