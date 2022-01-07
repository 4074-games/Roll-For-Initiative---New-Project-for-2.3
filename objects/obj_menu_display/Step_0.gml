/// @description Insert description here
// You can write your code in this editor

if (setup) {
	
	switch (class) {
		case "Head" :
			eq = load_equipment_by_name(manager.head);
			break;
		case "Chest" :
			eq = load_equipment_by_name(manager.chest);
			break;
		case "Arm" :
			eq = load_equipment_by_name(manager.arm);
			break;
		case "Charm" :
			eq = load_equipment_by_name(manager.charm);
			break;
		case "Legs" :
			eq = load_equipment_by_name(manager.leg);
			break;
		case "Feet" :
			eq = load_equipment_by_name(manager.feet);
			break;
	}

	//eq = load_equipment_by_name(get_player_info(class));
	
	
	setup = false;
}