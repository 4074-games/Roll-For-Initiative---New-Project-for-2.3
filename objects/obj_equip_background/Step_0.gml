/// @description Insert description here
// You can write your code in this editor

if (setup == false) return;

var list = ["Arm","Legs", "Charm", "Head", "Chest", "Feet"];
var equip_list = pointer_null;


for (var i = 0; i < array_length(list); i++) {
	equip_list[i] = load_equipment_by_name(get_player_info(list[i]));
	
	var obj = instance_create_depth(x + 30, y + 30 + (24 * i), depth, obj_equipment_selector);
	obj.class = list[i];
}

get_player_stats();

edit_player_data("Power", get_player_info("Global Power"));
edit_player_data("Speed", get_player_info("Global Speed"));

skill_list = create_player_skill_list();
display_skill_list(skill_list, x + 520, y + 10);

for (var i = 0; i < array_length(skill_list); i++) {
	//skill_list[i].selectable = true;
	skill_list[i].detail.title = skill_list[i].title;
	//_skill_list[i].depth = 10;
}



setup = false;
