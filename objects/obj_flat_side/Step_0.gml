/// @description Insert description here
// You can write your code in this editor

for (var i = 1; i < array_length(pips_array); i++) {
	pips_array[i].visible = visible;
}

if (setup) {
	attack_pips = side.attack;
	defense_pips = attack_pips + side.defend;
	dodge_pips = defense_pips + side.dodge;
	gold_pips = dodge_pips + side.gold;

	for (var i = 1; i <= gold_pips; i++) {
		switch (i) {
			case 1:
				switch (gold_pips) {
					case 1:
					case 3:
					case 5:
						x_offset = 12;
						y_offset = 12;
						break;
					case 2:
					case 4:
					case 6:
					case 7:
					case 8:
					case 9:
						x_offset = 3;
						y_offset = 3;
						break;
				}
				break;
			case 2:
				switch (gold_pips) {
					case 2:
					case 4:
					case 6:
					case 7:
					case 8:
					case 9:
						x_offset = 21;
						y_offset = 21;
						break;
					case 3:
					case 5:
						x_offset = 3;
						y_offset = 3;
						break;
				}
				break;
			case 3:
				switch (gold_pips) {
					case 3:
					case 5:
						x_offset = 21;
						y_offset = 21;
						break;
					case 4:
					case 6:
					case 7:
					case 8:
					case 9:
						x_offset = 3;
						y_offset = 21;
						break;
				}
				break;
			case 4:
				switch (gold_pips) {
					case 4:
					case 6: 
					case 7:
					case 8:
					case 9:
						x_offset = 21;
						y_offset = 3;
						break;
					case 5:
						x_offset = 3;
						y_offset = 21;
						break;
				}
				break;
			case 5: 
				switch (gold_pips) {
					case 5:
						x_offset = 21;
						y_offset = 3;
						break;
					case 6:
					case 7:
					case 8:
					case 9:
						x_offset = 3;
						y_offset = 12;
						break;
				}
				break;
			case 6:
				switch (gold_pips) {
					case 6:	
					case 7:
					case 8:
					case 9:
						x_offset = 21;
						y_offset = 12;
						break;
				}
				break;
			case 7:
				switch (gold_pips) {
					case 8:
					case 9:
						x_offset = 12;
						y_offset = 3;
						break;
					case 7:
						x_offset = 12;
						y_offset = 12;
						break;
				}
				break;
			case 8:
				switch (gold_pips) {
					case 8:
					case 9:
						x_offset = 12;
						y_offset = 21;
						break;
				}
				break;		
			case 9:
				switch (gold_pips) {
					case 9:
						x_offset = 12;
						y_offset = 12;
				}
			}
		
	
		var pip = instance_create_depth(x + x_offset, y + y_offset, depth - 1, obj_flat_pip);
		pip.x_offset = x_offset;
		pip.y_offset = y_offset;
		pip.base = self;
		if (i <= attack_pips) {
			pip.image_index = 0;
		} else if ( i <= defense_pips) {
			pip.image_index = 1;
		} else if ( i <= dodge_pips) {
			pip.image_index = 2;
		} else {
			pip.image_index = 3;
		}
		pips_array[i] = pip;
	
	}

	setup = false;
}

x = base.x + x_off;
y = base.y + y_off;
