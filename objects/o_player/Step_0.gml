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

if(x > room_width-(sprite_width/2)) x = room_width-(sprite_width/2);
if(x < 0+(sprite_width/2)) x = (sprite_width/2);

// ir al menu
if(room != Menu and keyboard_check(vk_escape)){
	room_goto(Menu)
	o_player.can_move = 0
	o_player.visible = 0
}
else if(room == Room1 or room == Room2 or  room == Room3 or   room == Room4 or  room == Room5 or room == Room6 or  room == Room7){
	o_player.can_move = 1
	o_player.visible = 1
}