

var list = create_player_skill_list();


display_skill_list(list, 25, window_get_height() * 2.25 / 4);

for (var i = 0; i < array_length(list); i++) {
	list[i].selectable = true;
}
