var _intro = "Thank you for taking time to play this demo, I welcome any and all comments from the UI's Design, the gameplay itself, and thoughts on " +
	"balance, if you have any questions or comments, please send me a message at 4074.games@gmail.com, or come visit us at 4074 Game's Discord."
	
var text_box = instance_create_depth(0, 0, 0, obj_intro);

text_box.image_xscale = window_get_width() / text_box.sprite_width;
text_box.image_yscale = window_get_height() / text_box.sprite_height;

text_box.value = _intro;

room_transition_timer("Failure", 5);