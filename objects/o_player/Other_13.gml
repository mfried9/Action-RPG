/// @description Bomb State
if not instance_exists(o_bomb) {
	instance_create_layer(x, y+2, "Instances", o_bomb);
	audio_play_sound(a_set_bomb, 4, false);
}

state_ = player.move;
