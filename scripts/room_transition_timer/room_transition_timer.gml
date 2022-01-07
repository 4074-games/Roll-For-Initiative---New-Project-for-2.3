/// @function room_transition_timer(effect, delay)
/// @param effect {String}
/// @param delay {real}
function room_transition_timer(argument0, argument1) {

	edit_player_data("Timer", argument0);
	var timer = instance_create_depth(0, 0, 0, obj_timer_2)
	timer.alarm[0] = argument1 * room_speed;


}
