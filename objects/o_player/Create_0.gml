// Initializing player
initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();
image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 1.5
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;
global.item[0] = global.inventory[0];
global.item[1] = global.inventory[1];

// Setting up player state table
enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

// Setting up player direction table
enum dir {
	right,
	up,
	left,
	down
}

// Sets base state
starting_state_ = player.move;
state_ = starting_state_;

// Sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

// Sprite sword lookup table
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

// Sprite evade lookup table
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

// Sprite hit lookup table
sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;

// Sprite move lookup table
sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;