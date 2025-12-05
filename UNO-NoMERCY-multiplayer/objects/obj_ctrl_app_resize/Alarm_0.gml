/// @description
// - Update Window -
	window_set_size(ctrl_game_width * global.app.resize, ctrl_game_height * global.app.resize);
	window_center();

// - Update Window Vars -
	ctrl_window_width = window_get_width();
	ctrl_window_height = window_get_height();

// - Update Camera Vars -
	global.game.camera.width = floor(ctrl_window_width / global.app.resize);
	global.game.camera.height = floor(ctrl_window_height / global.app.resize);
	
// - Update Camera -
	camera_set_view_size(view_camera[0], global.game.camera.width, global.game.camera.height);
	camera_apply(view_camera[0]);

// - Update GUI -
	display_set_gui_size(global.game.camera.width, global.game.camera.height);
