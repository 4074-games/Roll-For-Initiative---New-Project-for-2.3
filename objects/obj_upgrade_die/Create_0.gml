upgrade_sides = array_create(0);

for (var i = -0; i < 4; i++) {
	upgrade_sides[i] = instance_create_depth(x + master.ui_size, y + i * master.ui_size, -1, obj_upgrade_side); 
}

upgrade_sides[4] = instance_create_depth(x, y + master.ui_size, -1, obj_upgrade_side);
upgrade_sides[5] = instance_create_depth(x + 2 * master.ui_size, y + 2 * master.ui_size, -1, obj_upgrade_side);