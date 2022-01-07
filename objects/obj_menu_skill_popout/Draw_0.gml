/// @description Insert description here
// You can write your code in this editor

if (title == pointer_null) return;

draw_self();
//draw_set_font(fnt_skill);
if (skill != undefined) {
	
	draw_text(x + 12, y + 12, title);
	
	if (visible) {
			if ((skill.damage != 0) && (skill.gold > 0)) {
				draw_text(x + 24, y + 176, string(skill.damage));
			}
			else if (skill.damage != 0) {
				draw_text(x + 24, y + 176, string(skill.damage));
			} else {
				draw_text(x + 24, y + 176, "0");
			}

		if ((skill.armor != 0) && (skill.gold > 0)) {
			draw_text(x + 120 - string_width(string(skill.armor)), y + 176, string(real(skill.armor)));
			}
			else if (skill.armor != 0) {
				draw_text(x + 120 - string_width(string(skill.armor)), y + 176, string(real(skill.armor)));
			} else {
				draw_text(x + 120 - string_width("0"), y + 176, "0");
			}

		}
		var count = 0;
		if (skill.reroll != 0) {
			draw_text(x+ 12, y + 56 + count * string_height("M"), "Reroll " + string(skill.reroll));
			count++;
		}
		if (skill.drain != 0) {
			draw_text(x + 12, y + 56 + count * string_height("M"), "Drain.");
			count++;
		}
		if (skill.heal != 0) {
			draw_text(x + 12, y + 56 + count * string_height("M"), "Heal " + string(skill.heal) + " Life.");
			count++;
		}
		if (skill.disable != 0) {
			draw_text(x + 12,y + 56 + count * string_height("M"), "Disable " + string(skill.disable)+ ".");
			count++;
		}
		if (skill.disrupt != 0) {
			draw_text(x + 12,y + 56 + count * string_height("M"), "Disrupt " + string(skill.disrupt));
			count++;
		}
		if (skill.pow != 0) {
			draw_text(x + 12,y + 56 + count * string_height("M"), "Add " + string(skill.pow) + " Power.");
			count++;
		}
		if (skill.spd != 0) {
			draw_text(x + 12,y + 56 + count * string_height("M"), "Add " + string(skill.spd) + " Speed.");
			count++;
		}
		
	}

draw_set_font(fnt_main);