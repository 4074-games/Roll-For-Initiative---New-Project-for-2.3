/// @description Insert description here
// You can write your code in this editor

//Head
//Arm
//Waist
//Feet
//Legs
//Charm



if (initial_setup ) {
	switch (class) {
		case "Head":
			image_index = 0;
			break;
		case "Arm":
			image_index = 1;
			break;
		case "Waist":
			image_index = 2;
			break;
		case "Legs":
			image_index = 3;
			break;
		case "Feet":
			image_index = 4;
			break;
		case "Charm":
			image_index = 5;
			break;
	}
	
	if ((class == "Head") || (class = "Chest") || (class = "Feet")) {
		initial_setup = false;
		return;
	}
	ability_1_object = load_ability_by_name(ability1);
	ability_1_object.visible = false;
	ability_2_object = load_ability_by_name(ability2);
	ability_2_object.visible = false;
	initial_setup = false;
}



