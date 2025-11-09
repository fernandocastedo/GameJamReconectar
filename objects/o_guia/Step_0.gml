/// @description Insert description here
// You can write your code in this editor

if(x >=384)
{
	hspeed -= accel
	if(hspeed < -speedMax) hspeed = -speedMax;
}
if(x <= 384) hspeed = 0

if(y >= 500) instance_destroy()