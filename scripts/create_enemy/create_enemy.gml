function create_enemy(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	var enemy = instance_create_depth(0, 0, -1, obj_villain);

	enemy.name = argument0;
	enemy.pow = floor(argument1);
	enemy.attacks = argument2;
	enemy.dice = floor(argument3);
	enemy.side = argument4;
	enemy.life = floor(argument5);
	enemy.height = argument6;
	enemy.act = argument7;
	enemy.type = argument8;

	return enemy;


}
