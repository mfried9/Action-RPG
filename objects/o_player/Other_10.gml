/// @description Move State
image_speed = 0;

// Gets input direction for x, right = 1, left = -1, none = 0
var _x_input = o_input.right_ - o_input.left_;
// Gets input direction for y, down = 1, up = -1, none = 0
var _y_input = o_input.down_ - o_input.up_;

// Sets direction based on _x_input and _y_input
var _input_direction = point_direction(0, 0, _x_input, _y_input);

// Sets roll direction and forces it to cardinal directions
roll_direction_ = direction_facing_*90;

// If no movement, slow/stop player; else move player
if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	// Flips image for left movement
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	// Updates direction_facing_
	get_direction_facing(_input_direction);
	// Increases speed if not max
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	// Set roll_direction_
	roll_direction_ = direction_facing_*90;
}

// Set actions based on selected inventory
inventory_use_item(o_input.action_two_pressed_, global.item[0]);
inventory_use_item(o_input.action_one_pressed_, global.item[1]);

// Moves player based on variables
move_movement_entity(false);