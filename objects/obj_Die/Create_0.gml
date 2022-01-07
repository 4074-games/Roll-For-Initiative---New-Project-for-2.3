

/// @description Insert description here
// You can write your code in this editor

side = array_create(0);
for (i=0;i<6;i++)
{
	side[i]=instance_create_depth(x, y, 0, obj_Side);
	side[i].active = false;
}

side[0].gold = 1;
side[0].attack = 1;
side[1].attack = 1;
//side[1].defend = 2;
side[2].attack = 1;
//side[2].dodge = 1;
//side[2].defend = 1;
//side[2].gold = 2;
side[3].gold = 1;
side[3].defend = 1;
side[4].defend = 1
side[5].dodge = 1;