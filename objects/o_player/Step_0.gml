//Input --------------
if(puzzle_active==false and can_move==true){
	if(keyboard_check(vk_right))
	{ 
		left=0
		hspeed+= accel;
		right= 1;
		if(hspeed > speedMax) hspeed = speedMax;
		
	
	}
	if(keyboard_check(vk_left))
	{
		right=0
		hspeed -= accel;
		left=1
		if (hspeed < -speedMax) hspeed = -speedMax;
		
	}
	//Checks --------------

	if(!keyboard_check(vk_right) and !keyboard_check(vk_left))hspeed=0 ;
	if(keyboard_check(vk_right) and keyboard_check(vk_left))hspeed=0;
}

if(hspeed != 0)
{
	if(hspeed > 0)
	{
		move_contact_solid(0,hspeed);
	}
	else
	{
		move_contact_solid(180,abs(hspeed));
	}
}