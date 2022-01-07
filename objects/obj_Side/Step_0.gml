

// Set Pips of each type on the side to display.
// atk fills first, then Defend, then dodge. 

var offset = .22;

if (update) {
	var my_object = instance_place(x, y, par_pip);
	while (my_object != noone)
	{
		instance_destroy(my_object);
		var my_object = instance_place(x, y, par_pip);
	}
	
	atk_pips = attack;				
	def_pips = attack + defend;
	dodge_pips = attack + defend + dodge;
	gold_pips = attack + defend + dodge + gold;
	pips = attack + defend + dodge + gold;

	

	for (k = 1; k <= pips ; k++) {
		switch (pips) {
			case 1:
				x_position = x;
				y_position = y;
				break;
			case 2:
				switch (k) {
					case 1:
						x_position = x - master.ui_size * offset;
						y_position = y - master.ui_size * offset;
						break;
					case 2:
						x_position = x + master.ui_size * offset;
						y_position = y + master.ui_size * offset;
						break;
				}	
				break;
			case 3:
				switch (k) {
					case 1:
						x_position = x - master.ui_size * offset;
						y_position = y - master.ui_size * offset;
						break;
					case 2:
						x_position = x + master.ui_size * offset;
						y_position = y + master.ui_size * offset;
						break;
					case 3:
						x_position = x;
						y_position = y;
						break;
				}	
				break;
			case 4:
				switch (k) {
					case 1:
					case 2:
						x_position = x + master.ui_size * offset;
						break;
					case 3:
					case 4:
						x_position = x - master.ui_size * offset;
						break;
				}
				switch (k) {
					case 1:
					case 3:
						y_position = y + master.ui_size * offset;
						break;
					case 2:
					case 4:
						y_position = y - master.ui_size * offset;
					break;
				}	
				break;
			case 5:
				switch (k) {
					case 1:
					case 2:
						x_position = x + master.ui_size * offset;
						break;
					case 3:
					case 4:
						x_position = x - master.ui_size * offset;
						break;
					case 5:
						x_position = x;
						y_position = y;
						break;
					}
				switch (k) {
					case 1:
					case 3:
						y_position = y + master.ui_size * offset;
						break;
					case 2:
					case 4:
						y_position = y - master.ui_size * offset;
						break;
					}
					break;
			case 6:
				switch (k) {
					case 1:
					case 2:
					case 3:
						x_position = x + master.ui_size * offset;
					break;
					case 4:
					case 5:
					case 6:
						x_position = x - master.ui_size * offset;
						break;
					}
				switch (k) {
					case 1:
					case 4:
						y_position = y + master.ui_size * offset;
						break;
					case 2:
					case 5:
						y_position = y - master.ui_size * offset;
						break;
					case 3:
					case 6:
						y_position = y;
						break;
					}	
					break;
			case 7: 
				switch (k) {
					case 1:
					case 2:
					case 3:
						x_position = x + master.ui_size * offset;
						break;
					case 4:
					case 5:
					case 6:
						x_position = x - master.ui_size * offset;
						break;
					case 7:
						x_position = x;
						break;
					}
				switch (k) {
					case 1:
					case 4:
						y_position = y + master.ui_size * offset;
					break;
					case 2:
					case 5:
						y_position = y - master.ui_size * offset;
					break;
					case 3:
					case 6:
					case 7:
						y_position = y;
						break;
					}	
					break;
			case 8:	
				switch (k) {
					case 1:
					case 2:
					case 3:
						x_position = x + master.ui_size * offset;
						break;
					case 4:
					case 5:
					case 6:
						x_position = x - master.ui_size * offset;
						break;
					case 7:
					case 8:
						x_position = x;
						break;
					}
				switch (k) {
					case 1:
					case 4:
					case 8:
						y_position = y + master.ui_size * offset;
						break;
					case 2:
					case 5:
					case 7:
						y_position = y - master.ui_size * offset;
						break;
					case 3:
					case 6:
						y_position = y;
						break;
					}
					break;
			case 9:
				switch (k) {
					case 1:
					case 2:
					case 3:
						x_position = x + master.ui_size * offset;
						break;
					case 4:
					case 5:
					case 6:
						x_position = x - master.ui_size * offset;
						break;
					case 7:
					case 8:
					case 9:
						x_position = x;
						break;
					}
				switch (k) {
					case 1:
					case 4:
					case 8:
						y_position = y + master.ui_size * offset;
						break;
					case 2:
					case 5:
					case 7:
						y_position = y - master.ui_size * offset;
						break;
					case 3:
					case 6:
					case 9:
						y_position = y;
						break;
	
			
				}	
				break;
		}	
		if (master.debug == 1) show_debug_message("Attack " + string(self.attack));
		if (master.debug == 1) show_debug_message("Defend " + string(self.defend));
		if (master.debug == 1) show_debug_message("Dodge " + string(self.dodge));
		if (master.debug == 1) show_debug_message("Pip " + string(k));
		if (k <= atk_pips) {
			pip = instance_create_depth(x_position, y_position, depth - 1, obj_Attack);
			if (master.debug == 1) show_debug_message("Attack Pip");
		}
		else if (k <= def_pips)  
		{
			pip = instance_create_depth(x_position, y_position, depth - 1, obj_Defend);
			if (master.debug == 1) show_debug_message("Defend Pip");
		}
		else if (k <= dodge_pips)  
		{
			pip = instance_create_depth(x_position, y_position, depth - 1, obj_Dodge);
			if (master.debug == 1) show_debug_message("Dodge Pip");
		}
		else if (k <= gold_pips) {
			pip = instance_create_depth(x_position, y_position, depth - 1, obj_Gold);
		}
		
		pip.parent = self;
		pip.x_position = x_position - x;
		pip.y_position = y_position - y;
		all_pips[k] = pip;
//		pip.image_xscale = sprite_get_height(asset_get_index("spr_card_back")) / 32;
//		pip.image_yscale = sprite_get_height(asset_get_index("spr_card_back")) / 32;
	}	
	update = false;
}
