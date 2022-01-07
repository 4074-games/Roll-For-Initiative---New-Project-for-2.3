var upgrade_die = instance_create_depth(master.ui_size, master.ui_size, 0, obj_upgrade_die);
for (var i = 0; i < 6; i++) {
	upgrade_die.side[i].active = false;
}


instance_create_depth(window_get_width() - master.ui_size, master.ui_size / 2, 0, obj_money);

var _health_bar = instance_create_depth(5, 5, -1, obj_max_health);
_health_bar.player = true;

for (var i = 0; i < 6; i++) {
	upgrade_die.side[i] = instance_create_depth(0, 0, 0, obj_upgrade_side);
	read_side_from_string(upgrade_die.side[i], get_player_info("Upgrade" + string(i)));
	upgrade_die.side[i].update = true;
	}

instance_create_depth(0, 0, 10, obj_status_background);

create_flat_from_die(upgrade_die);

instance_create_depth(window_get_width() - master.ui_size, window_get_height() - master.ui_size, 0, obj_upgrade_accept);

display_skill_list(create_player_skill_list(), 20, 360);