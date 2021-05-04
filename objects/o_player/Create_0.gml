image_speed = 1;

enum player {
	move,
	attack,
	dash
}

enum dir {
	right,
	up,
	left,
	down
}

direction_facing = dir.right;
starting_state = player.move;
state = starting_state;

#region Sprite Lookup Tables



sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

sprite_[player.attack, dir.right] = s_player_attack_right;
sprite_[player.attack, dir.up] = s_player_attack_up;
sprite_[player.attack, dir.left] = s_player_attack_left;
sprite_[player.attack, dir.down] = s_player_attack_down;

#endregion