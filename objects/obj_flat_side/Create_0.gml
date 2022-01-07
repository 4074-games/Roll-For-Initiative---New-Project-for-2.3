/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

setup = false;

side = instance_create_depth(-1000, -1000, 0, obj_Side);
side.active = false;

attack_pips = side.attack;
defense_pips = attack_pips + side.defend;
dodge_pips = defense_pips + side.dodge;
gold_pips = dodge_pips + side.gold;

x_off = -1;
y_off = -1;

base = array_create(0);

pips_array = array_create(0);