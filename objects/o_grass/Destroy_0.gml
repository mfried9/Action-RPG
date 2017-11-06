create_animation_effect(s_grass_effect, x, y, random_range(.4, .8), true);
if chance(0.1) {
	var _item = choose(o_gem_pickup, o_heart_pickup);
	instance_create_layer(x+8, y+8, "Instances", _item);
}