function create_card(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15) {
	var card = instance_create_depth(-1000, 0, 0, obj_card);

	card.category = argument0;
	card.title = argument1;
	card.attack = floor(argument2);
	card.defend = floor(argument3);
	card.dodge = floor(argument4);
	card.damage = floor(argument5);
	card.armor = floor(argument6);
	card.heal = floor(argument7);
	card.pow = floor(argument8);
	card.spd = floor(argument9);
	card.reroll = floor(argument10);
	card.disrupt = floor(argument11);
	card.disable = floor(argument12);
	card.refresh = floor(argument13);
	card.gold = floor(argument14);
	card.drain = floor(argument15);
	return card;


}
