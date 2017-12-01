/// @description Attack State
if not instance_exists(o_player) {
	state_ = bat.move;
	exit;
}

sprite_facing();
if distance_to_object(o_player) > range_ {
	state_ = bat.move;
}

var _direction = point_direction(x, y, o_player.x, o_player.y);
add_movement_maxspeed(_direction, 0.125, 1);
move_movement_entity(true);

var _player = instance_place(x, y, o_player);

if _player {
	create_hitbox(sprite_index, x, y, 0, 1, [o_player], 1, 5);
}