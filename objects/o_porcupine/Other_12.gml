/// @description Move State
image_speed = 0.35;
sprite_facing();
if alarm[1] <= 0 {
	apply_friction_to_movement_entity();
}
else {
	add_movement_maxspeed(direction_, 0.05, 0.5);
}

move_movement_entity(true);

if speed_ == 0 {
	alarm[1] = random_range(1, 3) * global.one_second;
	state_ = porcupine.idle;
}

porcupine_attack();