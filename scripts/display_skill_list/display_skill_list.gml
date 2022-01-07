/// @function display_skill_list(list, x, y)
/// @param list {array[string]}
/// @param x_coordinate {int}
/// @param y_coordinate {int}
function display_skill_list(_list, x_coordinate, y_coordinate) {

	for (var i = 0; i < array_length(_list); i++) {
		if (_list[i] == undefined) break;
		_list[i].depth = -3 * (i + 1);
		_list[i].x = x_coordinate;
		_list[i].y = y_coordinate + (42 * i);
		_list[i].active = true;
		_list[i].detail.x = x_coordinate;
		_list[i].detail.y = y_coordinate;
		_list[i].detail.initial_x = x_coordinate;
		_list[i].detail.initial_y = y_coordinate;
		
		
	}

	return _list;


}
