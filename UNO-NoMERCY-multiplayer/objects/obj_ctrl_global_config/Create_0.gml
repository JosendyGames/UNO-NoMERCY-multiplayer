/// @description
randomise();

// - Testing Vars -
	var test_player_total = 2;		// - Total Players -
	var test_player_add = 1;		// - Id Player -

// - Config Application Global -
	global.app = {
		resize: (display_get_width() + display_get_height()) / 760
	}

// - Config Game Global -
	global.game = {
		camera_width: 360,
		camera_height: 240
	}

// - Config Template Global -
	global.template = {
		card_list: {
			"type": "",					// - red, blue, yellow, green, special -
			"index": 0,					// - 0 / 9, (10) = reverse, (11) = block, (12) = +2, (13) = +4, (14) = repeat, (15) = descart -
			"x": 0,		"y": 0,			// - Position -
			"newX": 0,	"newY": 0,		// - New Position -
		}
	}

// - Config Server Global -
	global.server = {
		// - Cards Config - 
			card_spawn: 7,					// - Count Card In Spawn -
			card_spawn_lvl_normal: 9,		// - Count Spawn Level Normal -
			card_spawn_lvl_special: 1,		// - Count Spawn Level Special -
			card_limit: 25,					// - Count Limit Cards -
			card_played_list: [variable_clone(global.template.card_list)],	// - List Played Cards -
		
		// - Players Config - 
			players_list: [],				// - List Players In Game -
			players_turn_index: 1,			// - Num Player Turn -
		
		// - Game Config -
			game_reverse: false,			// - Boolean Game Reverse -
			game_add: 0						// - Count Eat Cards -
	}
	
	// - Config First Card -
		global.server.card_played_list[0].type = choose("red", "blue", "yellow", "green", "special");
		global.server.card_played_list[0].index = irandom(9);

	/*/- Generate Players -
	for (var i = 1; i <= player_total; i++) {
		// - Add Blank Space -
			array_push(global.serv_players_list, noone);
	
		// - Create Instances -
			if (i == player_local_add) {global.serv_players_list[i] = instance_create_depth(0, 0, y, obj_game_local_player);} 
			else {global.serv_players_list[i] = instance_create_depth(0, 0, y, obj_game_local_npc);}
		
		// - Asign ID -
			global.serv_players_list[i].players_id = i;	
	}
