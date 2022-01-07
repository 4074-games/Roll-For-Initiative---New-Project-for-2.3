/// @function read_side_from_string(side, string)
/// @param side {side)
/// @param string {string}
function read_side_from_string(_side, _string) {

	var _int = real(_string);

	_side.gold = floor(_int / 1000);
	_int = _int % 1000;
	_side.attack = floor(_int / 100);
	_int = _int % 100;
	_side.defend = floor(_int / 10);
	_int = _int % 10;
	_side.dodge = floor(_int);

	_side.update = true;


}
