depth = -y;
if health_ <= 0 && state_ != enemy.hit {
	instance_destroy();
	create_animation_effect(s_death_effect, x, y-8, 0.8, true);
}
if state_ != noone {
	event_user(state_);
}