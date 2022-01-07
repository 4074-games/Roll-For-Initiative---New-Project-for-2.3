/// @description Insert description here
// You can write your code in this editor

classes = load_class_list();

for (var i = 0; i < array_length(classes); i++) {
	var button = instance_create_depth(x, y + (i * 60), 0, obj_Class_button);
	button.class = classes[i];
}

