/// @description
// - Actualizar Posicion -
	x = (global.game.camera.width / 2);
	y = (global.game.camera.height) - 32;

// - Player ID -
	player_ID = 0;
	
// - Player Config -
	player_cards = array_create(global.srv.card.spawn_amount, {});
	player_select = array_length(player_cards) / 2;
	player_turn = false;
	
// - Player First Cards Config -
	for (var i = 0; i < array_length(player_cards); ++i) {
		player_cards[i] = variable_clone(global.tmpl.card);
	}

// - Generate First Random Cards -
	alarm[0] = 1;