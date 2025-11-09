/// @description Insert description here
// You can write your code in this editor

/*

show_debug_message(o_enchufeInicio.id)
show_debug_message(o_enchufeInicio.connected)
*/
with(o_cable)
{
	if(sprite_index == s_cableAzul and place_meeting(x,y,o_objective))
	{
		o_enchufeAzul.connected=1
	}
}