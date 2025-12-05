/// @description Generate First Cards
// - First Cards Config -
	for (var i = 0; i < array_length(player_cards); i++) {
		scr_ctrl_generate_card(player_cards, i);
		player_cards[i].new_x = x;
		player_cards[i].new_y = y;
		player_cards[i].x = x;
		player_cards[i].y = y;
	}