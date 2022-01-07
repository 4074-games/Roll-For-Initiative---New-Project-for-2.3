/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;



initial_x = x;
initial_y = y;

moving = false;
collided = false;

stats = instance_create_depth(x + 5, y + 5, depth, obj_hero_stats);