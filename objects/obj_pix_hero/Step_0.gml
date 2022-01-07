/// @description Insert description here
// You can write your code in this editor


if (moving) {
	x += 8;
}

if (collided && (image_angle < 30)) {
	image_angle += 3;
	x -= 20;
}

if (collided && image_angle == 30) {
	//show_debug_message("Test Collision");
	alarm[0] = room_speed * 2;
	collided = false;
}

try { 
	stats.image_angle = image_angle;
} catch (exception) {
	
}