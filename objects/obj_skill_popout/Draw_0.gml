/// @description Insert description here
// You can write your code in this editor

if (title == pointer_null) return;

draw_self();
//draw_set_font(fnt_skill);
if (skill != undefined) {
	
	draw_text(x + 12, y + 12, title);
	
	if (visible) {
		if (!enemy) {
			if ((skill.damage != 0) && (skill.gold > 0)) {
				draw_text(x + 24, y + 176, string(real(get_player_info("Spell Power")) + skill.damage));
			}
			else if (skill.damage != 0) {
				draw_text(x + 24, y + 176, string(real(get_player_info("Power")) + skill.damage));
			} else {
				draw_text(x + 24, y + 176, "0");
			}
			if ((skill.armor != 0) && (skill.gold > 0)) {
				draw_text(x + 120 - string_width(string(real(get_player_info("Spell Power")) + skill.armor)), y + 176, string(real(get_player_info("Spell Power")) + skill.armor));
			}
			else if (skill.armor != 0) {
				draw_text(x + 120 - string_width(string(real(get_player_info("Speed")) + skill.armor)), y + 176, string(real(get_player_info("Speed")) + skill.armor));
			} else {
				draw_text(x + 120 - string_width("0"), y + 176, "0");
			}
		} else {
			if (skill.damage != 0) {
				show_debug_message("Power = " + get_player_info("Enemy Power"));
				show_debug_message("Speed = " + get_player_info("Enemy Speed"));
				draw_text(x + 24, y + 176, string(real(get_player_info("Enemy Power")) + skill.damage));
			} else {
				draw_text(x + 24, y + 176, "0");
			}
			if (skill.armor != 0) {
				draw_text(x + 120 - string_width(string(real(get_player_info("Enemy Speed")) + skill.armor)), y + 176, string(real(get_player_info("Enemy Speed")) + skill.armor));
			} else {
				draw_text(x + 120 - string_width("0"), y + 176, "0");
			}

		}
		var count = 0;
		if (skill.drain != 0) {
			draw_text(x + 12, y + 56 + count * string_height("M"), "Drain.");
		}
		if (skill.heal != 0) {
			draw_text(x + 12, y + 56 + count * string_height("M"), "Heal " + string(skill.heal) + " Life.");
			count++;
		}
		if (skill.reroll != 0) {
			var dice_string = "";
			if (skill.reroll == 1) dice_string = " Die.";
			else dice_string = " Dice.";
			draw_text(x + 12,y + 56 + count * string_height("M"), "Reroll " + string(skill.reroll) + dice_string);
			count++;
		}
		if (skill.disable != 0) {
			var dice_string = "";
			if (skill.disable == 1) dice_string = " Die.";
			else dice_string = " Dice.";
			draw_text(x + 12,y + 56 + count * string_height("M"), "Disable " + string(skill.disable) + dice_string);
			count++;
		}
		if (skill.disrupt != 0) {
			var dice_string = "";
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
}
draw_set_font(fnt_main);