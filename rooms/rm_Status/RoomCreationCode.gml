
room_speed = 60;
/*
global.globals = instance_create_depth(0, 0, 0, obj_Manager);
global.globals.ui_size = sprite_get_width(0);
global.globals.debug = 2;
*/
instance_create_depth(0,0,1, obj_status_background);

for (j = 0; j < 5; j++) {
	flat_die = instance_create_depth(
		(j*3) * master.ui_size + (.5 * master.ui_size * j) + (.5 * master.ui_size), 
		.75 * master.ui_size, 
		0, obj_Flat_Die);
		
	create_flat_from_die(flat_die, master.dice[j]);
}

master.character = instance_create_depth(300, 375, 0, obj_hero);
master.character.image_xscale = master.character_height / sprite_get_height(asset_get_index("spr_" + master.player + "_running"));
master.character.image_yscale = master.character_height / sprite_get_height(asset_get_index("spr_" + master.player + "_running"));


for (var i = 0; i < array_length_1d(master.hand); i++) { 
	var card =  load_ability_by_name(master.hand[i]);
	card.active = true;
	card.x = 0;
	card.y = 400 + (i * sprite_get_height(asset_get_index("spr_card_back")));
}

instance_create_depth(5, 5, -1, obj_max_health);