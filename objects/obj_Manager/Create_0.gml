// @description Insert description here
// You can write your code in this editor

dice_quantity = 5;
player = pointer_null;
enemy = pointer_null;
life = 60;
max_life = 60;
dice[dice_quantity] = pointer_null;
inventory = pointer_null;
transition = pointer_null;
//Stat Based Items
head = pointer_null;
chest = pointer_null;
feet = pointer_null;

//Skill Based Items
arm = pointer_null;
charm = pointer_null;
leg = pointer_null;

for (var i = 0; i < 20; i++) {
	dice[i] = instance_create_depth(0, 0, 0, obj_Die);
}

upgrade_list = pointer_null;
upgrade_spent = pointer_null;