/// @description
// - Actualizar Posicion -
	x = (global.game.camera.width / 2);
	y = (global.game.camera.height) - 32;

// - Actualizar Variables de las Cartas -
	for (var i = 0; i < array_length(player_cards); ++i) {
		player_cards[i].new_x = scr_ctrl_dynamic_compress(i, 26, 120, (global.game.camera.width / 2), array_length(player_cards) - 1);
		
		if (player_select == i) {player_cards[i].new_y = y - 19.5;}
		else {player_cards[i].new_y = y;}
		
		player_cards[i].x = lerp(player_cards[i].x, player_cards[i].new_x, 0.1);
		player_cards[i].y = lerp(player_cards[i].y, player_cards[i].new_y, 0.2);
		player_cards[i].scale = lerp(player_cards[i].scale, player_cards[i].new_scale, 0.05);
		
		// - Select Card With Mouse -
			if (keyboard_check_pressed(vk_anykey)) {player_keyboard_use = true;}
				
			if (i < array_length(player_cards) - 1) {
				if (point_in_rectangle(mouse_x, mouse_y, player_cards[i].x - 13, player_cards[i].y - 19.5, player_cards[i + 1].x - 13, player_cards[i].y + 19.5)) {
					player_select = i;
				}
			} else {
				if (point_in_rectangle(mouse_x, mouse_y, player_cards[i].x - 13, player_cards[i].y - 19.5, player_cards[i].x + 13, player_cards[i].y + 19.5)) {
					player_select = i;
				}
			}
			
			if (alarm[1] == -1) {
					 if keyboard_check(vk_left) {player_select -= 1;}
				else if keyboard_check(vk_right) {player_select += 1;}
				alarm[1] = 6;
			}
		
		if (player_select < 0) {player_select = array_length(player_cards) - 1;}
		else if (player_select > array_length(player_cards) - 1) {player_select = 0;}
	}