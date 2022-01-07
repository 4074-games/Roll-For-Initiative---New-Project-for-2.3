/// @description Insert description here
// You can write your code in this editor

if (attack) {
	attack = 0;
	defend = 1;
}	else if (defend) {
	defend = 0;
	dodge = 1;
}  else if (dodge) {
	dodge = 0;
	attack = 1;
}

update = true;