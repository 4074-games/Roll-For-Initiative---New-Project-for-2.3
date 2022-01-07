/// @description Insert description here
// You can write your code in this editor
var obj = instance_place(x, y, obj_skill_detail_pip);
while (obj != noone) {
	instance_destroy(obj);
	var obj = instance_place(x, y, obj_skill_detail_pip);
}
instance_destroy(detail);