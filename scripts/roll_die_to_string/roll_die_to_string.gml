// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function roll_die_to_string(die){
	var roll = floor(random(6));
	var result = die.side[roll];
	return result;
}