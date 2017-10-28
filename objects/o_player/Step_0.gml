image_speed = 0;

if keyboard_check(vk_right) and not place_meeting(x+2, y, o_solid) {
	x += 2;
	sprite_index = s_player_run_right;
	image_speed = .6;
}

if keyboard_check(vk_left) and not place_meeting(x-2, y, o_solid) {
	x -= 2;
}

if keyboard_check(vk_up) and not place_meeting(x, y-2, o_solid) {
	y -= 2;
	sprite_index = s_player_run_up;
	image_speed = .6;
}

if keyboard_check(vk_down) and not place_meeting(x, y+2, o_solid) {
	y += 2;
	sprite_index = s_player_run_down;
	image_speed = .6;
}