instance_create_depth(0, 0, -99, obj_fps);

var background = instance_create_depth(0,0,11, obj_Main_Background);

background.image_xscale = window_get_width() / 512;
background.image_yscale = window_get_height() / 384;
////var UI = instance_create_depth(0, window_get_height() - sprite_get_height(spr_UI_Back) - 5, 10, obj_UI_base);
//UI.image_alpha = 0.75;

var scale_x = window_get_width() * window_get_width()  / sprite_get_width(spr_Main_Back);
var scale_y = window_get_height() * window_get_height() / sprite_get_height(spr_Main_Back);
//character

var hero = display_character((125 /1024)  * scale_x, (160 /768)  * scale_y);
hero.default_x = hero.x;
hero.default_y = hero.y;

var _skill_list = create_player_skill_list();
display_skill_list(_skill_list, (25 / 1024) * scale_x, (220 /768) * scale_y);




for (var i = 0; i < array_length(_skill_list); i++) {
	_skill_list[i].selectable = true;
	_skill_list[i].detail.title = _skill_list[i].title;
	//_skill_list[i].depth = 10;
}

get_player_stats();

//Player Dice
var x_die_position =  (25 / 512) * window_get_width() + 180 + 200; 
var y_die_position = ((220 /384) * window_get_height());
create_player_dice(x_die_position, y_die_position + (master.ui_size / 2));


edit_player_data("Life", get_player_info("Starting Life"));
edit_player_data("Enemy Health", get_enemy_info(get_player_info("Enemy"), "HP"));

edit_player_data("Power", get_player_info("Global Power"));
edit_player_data("Speed", get_player_info("Global Speed"));

edit_player_data("Enemy Power", get_player_info("Global Enemy Power"));
edit_player_data("Enemy Speed", get_player_info("Global Enemy Speed"));

edit_player_data("Player Disrupted", 0);
edit_player_data("Enemy Disrupted", 0);

instance_create_depth(60, 60, -1, obj_health);
var enemy_health = instance_create_depth(886, 60, -1, obj_health);
enemy_health.enemy = true;

//Enemy
var _enemy_skill_x = sprite_get_width(spr_UI_Back) - 300 - 20;
edit_player_data("Enemy Health", get_enemy_info(get_player_info("Enemy"), "HP"));

create_enemy_object(660, 320);
var _enemy_skills = create_enemy_skill_list(get_player_info("Enemy"));
display_skill_list(_enemy_skills, 800, y_die_position);
for (var i = 0; i < array_length(_enemy_skills); i++) {
	if (_enemy_skills[i] == undefined) break;
	_enemy_skills[i].enemy = true;
	_enemy_skills[i].detail.enemy = true;
	_enemy_skills[i].detail.title = _enemy_skills[i].title;
	//_enemy_skills[i].depth = 10;
}
create_enemy_dice(_enemy_skill_x - 3 * (master.ui_size / 2) - 5, y_die_position + (master.ui_size / 2));

//UI
instance_create_depth(window_get_width()/2, window_get_height() * 3/4 - 50 , -1, obj_combat_accept);

//Instance_variables

if (get_tutorial_status("combat")) {
	var output = array_create(0);
	output[0] = "Alrighty, Welcome to round 1.";
	output[1] = "This is where we put everything out there, ";
	output[2] = "you'll be using your 6 skills on the left to fight it out with your opponent.";
	output[3] = "Simply left click your dice to pay for your selected skill then hit the sword in the middle to run.";
	output[4] = "You can hover any skill to see everything that skill entails.";
	output[5] = "Your primary items are your skills' costs, attacks, and defense values.";
	output[6] = "Your skills will also have some abilities.";
	output[7] = "Reroll will allow you to reroll a die that's being used, one that already has been,";
	output[8] = "or if you really want to, one that has not been used.";
	output[9] = "Simply Right Click one of your dice to set it to be rerolled.";
	output[10] = "Disable will allow you to force an opponent's die to the used state";
	output[11] = "Simply right click an opponent's die to set it to disable.";
	display_message(output);
	add_tutorial_status("combat", "0");
}