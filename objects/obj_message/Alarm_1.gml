/// @description Insert description here
// You can write your code in this editor

lines[0] = text;	
for (var i = 5; i > 0; i--) {
	lines[i] = lines[i - 1];	
}
	
current = 0;
alarm[2] = 1;