/// @description Move state
sprite_facing();
add_movement_maxspeed(direction_, 0.05, .5);
move_movement_entity(true);

if alarm[1] <= 0 {
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
}

if instance_exists(o_player) and distance_to_object(o_player) <= range_ {
	state_ = hornet.attack;	
}
