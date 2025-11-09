/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_right)) {
    if(x >=384)
	{
		hspeed -= accel
		if(hspeed < -speedMax) hspeed = -speedMax;
	}
	else if(x <= 384) hspeed = 0
}
else{
	x = 700
}




