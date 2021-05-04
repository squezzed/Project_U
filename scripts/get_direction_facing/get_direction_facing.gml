// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_direction_facing(){
var _direction = argument0;
direction_facing_ = round(_direction/90);
if direction_facing_ == 4 {
	direction_facing_ = 0;	
}
}