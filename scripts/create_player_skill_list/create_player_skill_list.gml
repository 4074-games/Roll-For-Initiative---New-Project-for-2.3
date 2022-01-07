/// @function create_player_skill_list();
function create_player_skill_list() {

	var equip_arms = load_equipment_by_name(get_player_info("Arm"));
	var equip_legs = load_equipment_by_name(get_player_info("Legs"));
	var equip_charm = load_equipment_by_name(get_player_info("Charm"));
	var skill_list = array_create(0);

	get_player_stats();
	skill_list[0] = load_ability_by_name(equip_arms.ability1);
	skill_list[1] = load_ability_by_name(equip_arms.ability2);
	skill_list[2] = load_ability_by_name(equip_legs.ability1);
	skill_list[3] = load_ability_by_name(equip_legs.ability2);
	skill_list[4] = load_ability_by_name(equip_charm.ability1);
	skill_list[5] = load_ability_by_name(equip_charm.ability2);
	
	return skill_list;
}


