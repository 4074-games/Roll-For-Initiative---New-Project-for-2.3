/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

fade = pointer_null;
cancel = false;
setup = true;


for (var i = 5; i > 0; i--) {
	lines[i] = "";
}

text = "";


current = 0;
line_count = 0;
input = pointer_null;

tutorial = instance_create_depth(0, 0, -100, obj_tutorial);