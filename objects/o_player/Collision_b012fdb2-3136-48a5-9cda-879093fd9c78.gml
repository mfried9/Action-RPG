// Allows travel to other room on collosion with door
global.player_start_position = other.start_;
room_goto(other.room_);
persistent = true;