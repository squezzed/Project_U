/// @description Movement

var speed_ = 1;
var x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));


if x_input == 0 and y_input == 0{
	sprite_index = s_player;
}

if keyboard_check(ord("W")){
	y -= speed_;
	sprite_index = s_player_run_up;
}
if keyboard_check(ord("S")){
	y += speed_;
	sprite_index = s_player_run_down
	;
} 
if keyboard_check(ord("D")){
	x += speed_;
	sprite_index = s_player_run_right;
}
if keyboard_check(ord("A")){
	x -= speed_;
	sprite_index = s_player_run_left;
}

     