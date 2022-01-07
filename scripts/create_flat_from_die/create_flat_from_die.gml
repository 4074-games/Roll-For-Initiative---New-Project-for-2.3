function create_flat_from_die(die) {
	display[6] = pointer_null;
	if (master.debug == 1) show_debug_message("Create Flat Die Call");
	for (side=0; side < 6; side++) {
		display[side] = die.side[side];
		switch (side) {
			case 0:
			case 1:
			case 2:
			case 3:
				display[side].x = die.x + master.ui_size * 1.5;
			break;
			case 4:
				display[side].x = die.x + master.ui_size * .5;
			break;
			case 5: 
				display[side].x = die.x + master.ui_size * 2.5;
			break;
		}
		switch (side) {
			case 0:
				display[side].y = die.y + master.ui_size * .5;
			break;
			case 1:
			case 4:
				display[side].y = die.y + master.ui_size * 1.5;
			break;
			case 2:
			case 5: 
				display[side].y = die.y + master.ui_size * 2.5;
			break;
			case 3:
				display[side].y = die.y + master.ui_size * 3.5;
			break;
		}
		display[side].active = true;
	}





}
