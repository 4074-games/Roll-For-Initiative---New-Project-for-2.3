/// @description Insert description here
// You can write your code in this editor

category = pointer_null;
title = pointer_null;
attack = pointer_null;
defend = pointer_null;
dodge = pointer_null;
gold = pointer_null;
damage = pointer_null;
armor = pointer_null;
heal = pointer_null;
pow = pointer_null;
spd = pointer_null;
reroll = pointer_null;
disrupt = pointer_null;
disable = pointer_null;
refresh = pointer_null;
pips_array = pointer_null;
drain = 0;

active = false;
update = true;
enemy = false;

selectable = false;
selected = false;

image_xscale = 2;
image_yscale = 2;

detail = instance_create_depth(0, 0, depth - 1, obj_skill_popout);
detail.visible = false;
