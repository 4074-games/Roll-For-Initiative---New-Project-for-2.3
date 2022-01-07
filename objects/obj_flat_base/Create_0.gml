image_xscale = 2;
image_yscale = 2;

side = array_create(0);

for (var i = 0; i < 4; i++) {
	side[i] = instance_create_depth(x + 52, y + 20 + (i * 32), depth - 1, obj_flat_side);
	side[i].x_off = 52;
	side[i].y_off = 20 + (i * 32);
	side[i].base = self;
}

side[4] = instance_create_depth(x+20, y+ 52, depth-1, obj_flat_side);
	side[4].x_off = 20;
	side[4].y_off = 52;
	side[4].base = self;

side[5] = instance_create_depth(x+84, y+ 84, depth-1, obj_flat_side);
	side[5].x_off = 84;
	side[5].y_off = 84;
	side[5].base = self;

die = -1
setup = true;