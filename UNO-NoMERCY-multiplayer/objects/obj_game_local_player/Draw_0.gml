/// @description
draw_self();

// - (DEBUG) Draw ID -
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x, y + 12, string(player_ID), 0.4, 0.4, 0);

	var card_sprite = spr_card_special;
	var card_image = 8;
	var card_flip = 1;
	var card_select = 0;

// - Draw Cards -
	for (var i = 0; i < array_length(player_cards); i++) {
		// - Actualizar Scala del Jugador -
			if (player_cards[i].scale > 0) {
				card_sprite = asset_get_index("spr_card_" + string(player_cards[i].type));
				card_image = player_cards[i].index;
				card_flip = player_cards[i].scale;
			} else {card_flip = -player_cards[i].scale;}
		
		draw_sprite_ext(
			card_sprite, 
			card_image, 
			player_cards[i].x, 
			player_cards[i].y,
			1 * card_flip,
			1,
			0, 
			c_white, 
			1);	
	}