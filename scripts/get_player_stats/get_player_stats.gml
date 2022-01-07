function get_player_stats() {
	
	var stats_array = array_create(0);
//	if (load_equipment_by_name(get_player_info("Head")) != undefined) {
		stats_array[array_length(stats_array)] = load_equipment_by_name(get_player_info("Head"));
//	}
//	if (load_equipment_by_name(get_player_info("Chest")) != undefined) {
		stats_array[array_length(stats_array)] = load_equipment_by_name(get_player_info("Chest"));
//	}
//	if (load_equipment_by_name(get_player_info("Feet")) != undefined) {
		stats_array[array_length(stats_array)] = load_equipment_by_name(get_player_info("Feet"));
//	}
	
	var strength = 0;
	var dex = 0;
	var attack = 0; 
	var defend = 0;
	var dodge = 0;
	var gold = 0;
	var spell_power = 0;
	
	for (var i = 0; i < array_length(stats_array); i++) {
		strength += stats_array[i].str;
		dex += stats_array[i].dex;
		attack += stats_array[i].attack;
		defend += stats_array[i].defend;
		dodge += stats_array[i].dodge;
		gold += stats_array[i].gold;
		spell_power += stats_array[i].spell_power;
	}
	
	edit_player_data("Global Power", strength);
	edit_player_data("Global Speed", dex);
	edit_player_data("Global Attack", attack);
	edit_player_data("Global Defend", defend);
	edit_player_data("Global Dodge", dodge);
	edit_player_data("Global Gold", gold);
	edit_player_data("Spell Power", spell_power);
}