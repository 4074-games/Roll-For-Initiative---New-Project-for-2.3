// Background Display
instance_create_depth(0, 0, 10, obj_Main_Background);

// Equipped List
instance_create_depth(25, 430, 0, obj_equip_background);

//Inventory and Shop
instance_create_depth(380, 445, -1, obj_inventory_background);
instance_create_depth(45, 45, 0, obj_store_items_background);

//UI
instance_create_depth(910, 40, -1, obj_money);
instance_create_depth(700, 355, -1, obj_status_accept); // Since the code and Sprite are similar, reusing Status Accept.
//instance_create_depth();

//Dice
instance_create_depth(512, 50, 0, obj_dice_display);

//Build a Side Workshop
//instance_create_depth(225, 50, 3, obj_build_a_side);
instance_create_depth(0, 0, 0, obj_mouse);
		//display_message(["Exchange sides to upgrade dice.", 
		//"Upgrading Equipment, both skills and stats.",
		//"Equipment is divided into 6 slots with 2 primary categories.",
		//"Skills are imbued by Equipment for the Arms, Legs, and Chest.",
		//"Stats are adjusted by Equipment for the Head, Waist, and Feet.",
		//"Stats are divided into benefits and costs.",
		//"Benefits will grant additional Power and Armor to your skills.",
		//"Costs will increase or decrease the requirements to use a skill.",
		//"During your turn you will select a skill and the dice required to power said skill.",
		//"You cannot save resources for another turn, so build your dice to be as efficient as you can.",
		//"Drain will heal you for the damage done to your opponent.",
		//"If an attack with disrupt is successful, the opponent will be stunned for the number of turns shown.",
		//"If a defensive skill with disrupt prevents all damage, the opponent will be stunned for the number of turns shown.",
		//"If a skill has disable, you can select an opponent's die to disable.",
		//"As the game progresses, skills wil become more expensive, so try to plan ahead."]);

die_to_summary(832, 540, get_upgrade_die());

if (get_tutorial_status("shop")) {
	var output = array_create(0);
	output[0] = "Welcome to the shop.";
	output[1] = "Need some new gear?";
	output[2] = "Ok then, so we have the shop inventory in the top left.";
	output[3] = "We have your current equipment in the bottom left.";
	output[4] = "And your inventory is in the bottom center."; 
	output[5] = "Each piece of equipment has 3 tiles, ";
	output[6] = "skills for those pieces(Weapon, off-hand- and Charms.";
	output[7] = "Stats for the pieces that affect those. (Helms, Belts, and Shoes) ";
	output[8] = "Each piece also has a Six Sided Upgrade die that will affect your upgrades.";
	output[9] = "Your Current Upgrade Die is in the bottom right.";
	output[10] = "Each of your upgraded sides that you get from winning fights, is rolled from that Die.";
	display_message(output);
	add_tutorial_status("shop", "0");

	
}