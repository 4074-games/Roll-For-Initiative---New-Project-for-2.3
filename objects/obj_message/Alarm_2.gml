/// @description Insert description here
// You can write your code in this editor
line_count++;
if (line_count < array_length(input)) {
	text = input[line_count];
	alarm[0] = 100;
	return;
}
line_count = 0;
visible = false;
setup = true;
instance_destroy(fade);
tutorial.help = "";
alarm[3] = 30;
instance_destroy(self);