
if(x_prev != mouse_x or y_prev != mouse_y)
{
	if(largo > 0)
	{
		move_towards_point(mouse_x,mouse_y,4)
		instance_create_depth(x,y,depth,o_cable)
		x_prev = x;
		y_prev = y;
		largo -= 1;
	}
}

if(place_meeting(x,y,o_objective))
{
	instance_destroy();
}

if(!mouse_check_button(mb_left) or place_meeting(x,y,o_obstaclearana))
{
	with(o_cable) instance_destroy();
	instance_destroy();
}
