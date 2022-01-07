//show_debug_message("Map = " + string(get_tutorial_status("map")));
//set_tutorial_status("menu", "1");

//add_tutorial_status("menu", "1");
//add_tutorial_status("drain", "1");
//add_tutorial_status("reroll", "1");
//add_tutorial_status("disable", "1");
//add_tutorial_status("disrupt-attack", "1");
//add_tutorial_status("disrupt-defend", "1");
//add_tutorial_status()
file_delete(working_directory + "\Tutorials.json");
file_delete(working_directory + "\Metadata.json");
file_delete(working_directory + "\Player.json");
room_goto(rm_Menu);