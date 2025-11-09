//Input --------------
if(puzzle_active==false and can_move==true){
	if keyboard_check(ord("D"))
	{ 
		left=0
		hspeed+= accel;
		right= 1;
		if(hspeed > speedMax) hspeed = speedMax;
		
	
	}
	if keyboard_check(ord("A"))
	{
		right=0
		hspeed -= accel;
		left=1
		if (hspeed < -speedMax) hspeed = -speedMax;
		
	}
	//Checks --------------

	if(!keyboard_check(ord("D")) and !keyboard_check(ord("A")))hspeed=0 ;
	if(keyboard_check(ord("D")) and keyboard_check(ord("A")))hspeed=0;
}


