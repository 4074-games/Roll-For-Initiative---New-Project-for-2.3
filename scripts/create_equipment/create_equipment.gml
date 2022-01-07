function create_equipment(title, class, ability1, ability2, starting_class, cash, strength, dex, attack, defend, dodge, gold, spell_power) {
	var equipment = instance_create_depth(-1000,-1000,-1, obj_equipment);

	equipment.title = title;
	equipment.class = class;
	equipment.ability1 = ability1;
	equipment.ability2 = ability2;
	equipment.starting_class = starting_class;
	equipment.cash = real(cash);
	equipment.str = real(strength);
	equipment.dex = real(dex);
	equipment.attack = real(attack);
	equipment.defend = real(defend);
	equipment.dodge = real(dodge);
	equipment.gold = real(gold);
	equipment.spell_power = real(spell_power);
	return equipment;


}
