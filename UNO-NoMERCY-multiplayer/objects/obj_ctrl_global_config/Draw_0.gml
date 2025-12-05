/// @description
draw_self();

// - Draw Config -
	draw_set_font(fnt_undertale);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);

// - Draw Mouse -
	draw_sprite(spr_misc_mouse, 0, mouse_x, mouse_y);