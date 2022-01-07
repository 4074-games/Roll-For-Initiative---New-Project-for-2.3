/// @function character_move(obj, x, y, delay);
/// @param character {object}
/// @param x {int}
/// @param y {int}
/// @param delay {real}
function character_move(character, x_location, y_location, delay) {
	character.x = x_location;
	character.y = y_location;
	character.alarm[1] = delay;
}
