/// @description Player Movement

#region Movement
var speed_ = 1.3;
var x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

///Movement
if x_input == 0 and y_input == 0{
	state = player.idle;
	
}
if keyboard_check(ord("W")) and not place_meeting(x,y - speed_,o_solid){
	y -= speed_;
	state = player.move;
}
if keyboard_check(ord("S")) and not place_meeting(x,y + speed_,o_solid){
	y += speed_;
	state = player.move;
} 
if keyboard_check(ord("D")) and not place_meeting(x + speed_,y,o_solid){
	x += speed_;
	state = player.move;
}
if keyboard_check(ord("A")) and not place_meeting(x - speed_,y,o_solid){
	x -= speed_;
	state = player.move;
}
#endregion