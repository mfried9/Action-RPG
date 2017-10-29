///@param direction

// Rounds degress to num 0-3 for sprite lookup
var _direction = argument0;

direction_facing_ = round(_direction/90);
if direction_facing_ == 4 {
	direction_facing_ = 0;
}