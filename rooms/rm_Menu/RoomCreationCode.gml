globalvar master;
master = instance_create_depth(0, 0, 0, obj_constants);
var local = instance_create_depth(0,0,0,obj_local);

instance_create_depth(0, 20, -99, obj_fps);

randomise();
window_set_fullscreen(false);
draw_set_font(fnt_main);

var manager = instance_create_depth(0, 0, 0, obj_Manager);
manager.player = "Fighter";

for (var _i = 0; _i < manager.dice_quantity; _i++) {
	manager.dice[_i] = instance_create_depth(0, 0, 0, obj_Die);
	
}

build_start_equipment(manager, manager.player);

instance_create_depth(0, 0, -1, obj_version);
try {
	get_player_info("Player"); 
}
catch (_exception) {
	//show_message("New");
	//encode(manager);
}
//manager.transition = "Stats Upgrade";
//manager.transition = "Shop Setup";


//encode(manager);

//get_player_stats();
//edit_player_data("Upgrade Number", 0);

instance_create_depth(0, 0, 10, obj_initial_menu);
instance_create_depth(50, 440, 0, obj_initial_equip);

//Player
instance_create_depth(325, 715, 0, obj_menu_hero);

local.upgrades = die_to_summary(832, 540, get_player_upgrades(get_player_info("Player")));
//instance_destroy(obj_Die);
//show_debug_message(get_tutorial_status("menu"));

if (get_tutorial_status("menu")) {
	var output = array_create(0);
	output[0] = "Welcome to Roll for Initiative.";
	output[1] = "Roll for Initiative is a Roguelite Dicebuilder where you'll upgrade your dice as you progress.";
	output[2] = "We'll start you out with some basic dice, and you can see the way we do things here.";
	output[3] = "Everything from artwork to combat can potentially change as our development process completes.";
	output[4] = "In the meantime, if you have any suggestions, they can be posted to our discord,"; 
	output[5] = "or you can send us an email at 4074.games@gmail.com.";
	output[6] = "Right now, there are some menu elements that have not been implemented, ";
	output[7] = "but the core functionality is here, so let me know what you think.";
	display_message(output);
	add_tutorial_status("menu", "0");
	
}