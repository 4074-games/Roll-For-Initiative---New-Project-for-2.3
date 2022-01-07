// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function side_to_string(side){
	var result = string(side.gold) + string(side.attack) + string(side.defend) + string(side.dodge);
	return result;
}