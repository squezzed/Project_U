/// @description Player Attack

image_speed = 2;

#region Attack

if (o_input._attack_input) {
	state = player.attack;
	//sprite_index = 	sprite_[state, direction_facing];
	sprite_index = s_player_attack_right
}

if animation_hit_frame(image_number - 1) {
	state = player.move;	
}

#endregion