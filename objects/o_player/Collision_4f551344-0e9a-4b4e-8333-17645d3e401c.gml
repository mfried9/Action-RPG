/// @description Hit Logic
if hurtbox_entity_can_be_hit_by(other) {
	instance_destroy();
	create_animation_effect(s_death_effect, x, y-8, 0.8, true);
}
