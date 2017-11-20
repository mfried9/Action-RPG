if keyboard_check_pressed(vk_escape) {
	if paused_ {
		paused_ = false;
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	}
	else {
		paused_ = true;
		instance_deactivate_all(true);
		audio_play_sound(a_pause, 5, false);
	}
}