randomize();

function scr_ctrl_generate_card(list, index) {
	var lvl_normal = global.srv.card.spawn_normal;	
	var lvl_special = global.srv.card.spawn_special;
	var spawn_lvl = lvl_normal + lvl_special;
	
	var card_spawn = irandom_range(1, spawn_lvl);
	
	if (card_spawn >= 1 and card_spawn <= lvl_normal) {
		list[index].type = choose("red", "blue", "yellow", "green");
		list[index].index = irandom(15);
	} else if (card_spawn > lvl_normal and card_spawn <= lvl_normal + lvl_special) {
		list[index].type = "special";
		list[index].index = irandom(3);
	}
}
