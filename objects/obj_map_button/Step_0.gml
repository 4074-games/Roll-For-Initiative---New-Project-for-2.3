/// @description Insert description here
// You can write your code in this editor
var list = ["Equipment", "Stats", "Upgrade", "Shop Stats"];
if (!update) return;
for (var i = 0; i < array_length(list); i++) { 
	if (_value == list[i]) {
		image_index = i;
		update = false;
		return;
	}
}