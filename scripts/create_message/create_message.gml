// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_message(text, cancel, fade){
	var message_box = instance_create_depth(300, 240, -10, obj_message);
	message_box.text = text;
	message_box.cancel = cancel;
	message_box.fade = fade;
}