
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
	else{
		move_towards_point(mouse_x,mouse_y,0)
	}
}

if(place_meeting(x,y,o_objective))
{
	o_cable.connected= true
	instance_destroy();
}

if(place_meeting(x,y,o_obstaclearana))
{
	with(o_cable)instance_destroy();
	with(o_enchufe)connected=0
	
	instance_destroy();
}
if(!mouse_check_button(mb_left))
{
	with(o_cable){
		if(connected=false)
		instance_destroy();
	}
	instance_destroy();
}
