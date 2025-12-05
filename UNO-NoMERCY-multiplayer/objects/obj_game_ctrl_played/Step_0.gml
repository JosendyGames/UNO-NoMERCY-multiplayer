/// @description
// - Update Scale Card -
	for (var i = 0; i < array_length(global.srv.cards_played); ++i) {
		global.srv.cards_played[i].x = lerp(global.srv.cards_played[i].x, global.srv.cards_played[i].new_x, 0.1);
		global.srv.cards_played[i].y = lerp(global.srv.cards_played[i].y, global.srv.cards_played[i].new_y, 0.1);
		global.srv.cards_played[i].scale = lerp(global.srv.cards_played[i].scale, global.srv.cards_played[i].new_scale, 0.05);
	}