/// @description Insert description here
// You can write your code in this editor


if(connected==0){
	if(mouse_check_button(mb_left) and!instance_exists(o_follower))
	{
		instance_create_layer(mouse_x,mouse_y,"instances",o_follower);
	}
}

