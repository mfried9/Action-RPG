event_inherited();

enum hornet {
	hit,
	move,
	attack,
}

starting_state_ = hornet.move;
state_ = starting_state_;

alarm[1] = global.one_second * random_range(0, 1);

range_ = 64;
image_index = 0;
image_xscale = choose(-1, 1);
image_speed = 1;