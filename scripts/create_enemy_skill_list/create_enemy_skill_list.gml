/// @function create_enemy_skill_list(enemy)
/// @param enemy {string}
function create_enemy_skill_list(enemy) {
	var i = 1;
	var skills = array_create(0);
	var temp = get_enemy_info(enemy, "Attack" + string(i));

	while (temp != undefined) {
		skills[i - 1] = temp;
		i++;
		var temp = get_enemy_info(enemy, "Attack" + string(i));
	}
	show_debug_message(temp);
	var card = array_create(0);
	for (var i = 0; i < array_length(skills); i++) {
		card[i] = load_ability_by_name(skills[i]);
	}

	return card;


}
