/// @description Player Movement

#region Movement
var speed_ = 1.3;
var x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _input_direction = point_direction(0, 0, x_input, y_input);
dash_direction_ = direction_facing*90;

///Movement
if x_input == 0 and y_input == 0{
	image_index = 0;
	image_speed = 2;
} else {
	image_speed = 0.6;
	if x_input != 0 {
		image_xscale = x_input;
	}
	get_direction_facing(_input_direction);	
	dash_direction_ = direction_facing *90;
}
if keyboard_check(ord("W")) and not place_meeting(x,y - speed_,o_solid){
	y -= speed_;
	direction_facing = dir.up;
	image_speed = 2;
	state = player.move;
}
if keyboard_check(ord("S")) and not place_meeting(x,y + speed_,o_solid){
	y += speed_;
	direction_facing = dir.down;
	image_speed = 2;
	state = player.move;
} 
if keyboard_check(ord("D")) and not place_meeting(x + speed_,y,o_solid){
	x += speed_;
	direction_facing = dir.right;
	image_speed = 2;
	state = player.move;
}
if keyboard_check(ord("A")) and not place_meeting(x - speed_,y,o_solid){
	x -= speed_;
	direction_facing = dir.left;
	image_speed = 2;
	state = player.move;
}
#endregion
     