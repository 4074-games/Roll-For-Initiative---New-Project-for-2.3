/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_set_font(fnt_main);
for (var i = 5; i > 0; i--) {
draw_text_ext(x+80, y+ 240 - (i * 40), lines[i], 10, 260);	
}	
draw_text_ext(x + 80, y + 240, string_copy(text, 1, current), 10, 260);
