// - Draw Cards -
	var card_sprite = spr_card_special;
	var card_image = 8;
	var card_flip = 1;

	for (var i = 0; i < array_length(global.srv.cards_played); i++) {
		if (global.srv.cards_played[i].scale > 0) {
			card_sprite = asset_get_index("spr_card_" + string(global.srv.cards_played[i].type));
			card_image = global.srv.cards_played[i].index;
			card_flip = global.srv.cards_played[i].scale;
		}
		else {card_flip = -global.srv.cards_played[i].scale;}
		
		draw_sprite_ext(
		card_sprite, 
		card_image, 
		x, 
		y,
		1 * card_flip,
		1,
		0, 
		c_white, 
		1);	
	}