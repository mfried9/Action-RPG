depth = -y;

// Calls event for corresponding player state
event_user(state_);

// Reads from sprite lookup table
sprite_index = sprite_[state_, direction_facing_];

// Death
if global.player_health <= 0 and !invincible_ {
	instance_destroy();
	create_animation_effect(s_death_effect, x, y-8, 1, true);
}