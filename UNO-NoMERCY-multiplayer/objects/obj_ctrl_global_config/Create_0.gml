/// @description
randomise();

// - Variables de Prueba -
	var test_player_total = 5;		// - Total Players -
	var test_player_add = 0;		// - Id Player -

// - (Globales) Configurar Plantillas -
	global.tmpl = {
		card: {
			type: "",							// red, blue, yellow, green, special
	        index: 0,							// 0–9 / reversa / bloqueo / +2 / +4 / repetir / descartar
	        x: 0,      y: 0,					// posicion
	        new_x: 0,  new_y: 0,				// nueva posicion
	        scale: -1,   new_scale: 1,			// escala de cara
		}
	}

// - (Globales) Configurar Variables de Aplicacion -
	global.app = {
		resize: (display_get_width() + display_get_height()) / 800 // 760
	}

// - (Globales) Configurar Variables del Juego -
	global.game = {
		camera: {
			width: 360,
			height: 240
		}
	}

// - (Globales) Configurar Variables del Servidor  -
	global.srv = {
		card: {
			spawn_amount: 24,
			spawn_normal: 10,
			spawn_special: 1,
			limit: 25
		},
		cards_played: [variable_clone(global.tmpl.card)],
		
		game_turn: 0,
		game_reverse: false,
		game_eat_cards: 0,
		
		players_list: []
	}

// - Update Player List -
	for (var i = 0; i < test_player_total; i++) {
		// - Add Blank Space -
			array_push(global.srv.players_list, noone);
	
		// - Create Instances -
			if (i == test_player_add) {global.srv.players_list[i] = instance_create_depth(16 * 3 + (16 * i), 8, y, obj_game_local_player);} 
			else {global.srv.players_list[i] = instance_create_depth(16 * 3 + (16 * i), 8, y, obj_game_local_npc);}
		
		// - Asign ID -
			global.srv.players_list[i].player_ID = i;
	}

// - Update First Card Played -
	global.srv.cards_played[0].type = choose("red", "blue", "yellow", "green");
	global.srv.cards_played[0].index = irandom(9);