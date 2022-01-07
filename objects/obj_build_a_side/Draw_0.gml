/// @description Insert description here
// You can write your code in this editor

var offset = 250

draw_set_colour(c_black);
draw_line(x, y, x, y + offset);
draw_line(x + offset, y, x+ offset, y + offset);
draw_line(x, y, x +offset, y);
draw_line(x, y +offset, x + offset, y + offset);

draw_text(x + 3, y + 3, "Build-a-Side");

draw_text_ext(x + 3, y + 77, "Click on a Side above to add it to the prchaseable side.", 12, 244);
draw_text(x + 3,y + 253, "Reset");
draw_text(x + 90, y + 253, "Swap Side with the");
draw_text(x + 80, y + 265, "selected side on the ");
draw_text(x + 90, y + 277, "right, cost is shown.");
