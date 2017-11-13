
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

for (var _i = 0; _i < global.player_max_health; _i++) {
	var _filled = _i < global.player_health;
	draw_sprite(s_heart_ui, _filled, 4+15*_i, _gui_height-29);
}