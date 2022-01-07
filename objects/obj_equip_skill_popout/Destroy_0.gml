/// @description Insert description here
// You can write your code in this editor
try {
	for (var i = array_length(detail_pips_array) - 1; i > -1; i--) {
		instance_destroy(detail_pips_array[i]);
	}
} catch (exception) {
	
}