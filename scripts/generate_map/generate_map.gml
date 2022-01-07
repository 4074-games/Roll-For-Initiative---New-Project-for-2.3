/// @param generate_map()
function generate_map() {


	for (var _i = 0; _i < 11; _i++) {
		for (var _j = 0; _j < 6; _j++) {
			switch _i {
				case 0:
				case 1:
				case 2:
					types = ["Training"];
					break;
				
				
				case 3:
					types = ["Shop"];
					break;
				case 4:
					types = ["Battle"];
					break;
				case 5:
				case 6:
					types = ["Battle", "Battle", "Battle", "Shop", "Elite"];
					break;
				case 7:
				case 8:
					types = ["Battle", "Battle", "Elite", "Shop", "Elite"];
					break;
				case 9: 
				case 10:
					types = ["Elite", "Elite", "Elite", "Shop", "Shop"];
					break;
			}
			edit_player_data("Column " + string(_i) + ", Row " + string(_j), types[floor(random(array_length(types)))]);
		}
	}


}
