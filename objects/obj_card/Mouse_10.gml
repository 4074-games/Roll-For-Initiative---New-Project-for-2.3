/// @description Insert description here
// You can write your code in this editor

if (detail.title == undefined) return;

detail.enemy = enemy;

with (detail) {
	
	visible = true;
	moving = true;
	returning = false;
	
}

audio_play_sound(snd_entry, 10, false);