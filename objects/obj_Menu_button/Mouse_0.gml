/// @description Insert description here
// You can write your code in this editor

 if (image_index == 3) return;
switch title {
	case "New Game":
		manager = instance_find(obj_Manager, 0);
		manager.transition = "Map Select";
		encode(manager);
		room_goto(rm_transition);
		break;
	case "Continue Run":
		room_goto(rm_transition);
		break;
	case "Reset Tutorials" :
		reset_tutorials();
		break;
	case "Introduction":
		display_tutorial(
		[
		"Welcome to Roll for Initiative.", 
		"This is an early build, there will be artwork that will likely be missing or changed.",
		"There are mechanics that may be altered as development continues.",
		"This is a turn based game where each turn you will select a skill from your available skills.",
		"Your opponent will also select a skill and combat will ensue.",
		"Skill's Costs are shown in pips in the top left of the card.",
		"Attack Values are shown on the left,",
		"Armor Values on the right.",
		"If the attack of a player is greater than the armor of their opponent.",
		"Attacks do damage to the difference between the attacker's attack and the opponent's defense."
		
		], "Introduction");
		break;
	default:
		show_message("Under Construction");
		break;
}