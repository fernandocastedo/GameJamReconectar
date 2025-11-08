x = mouse_x
y = mouse_y

show_debug_message(primera_colision)

if(!instance_exists(o_follower))
{
	primera_colision = noone
}
if(primera_colision == o_enchufeVerde){
	global.colorcable = s_cableVerde
	cable = o_puzzle_controller.cableverde
}
else if(primera_colision == o_enchufeAzul){
	global.colorcable = s_cableAzul
	cable = o_puzzle_controller.cableazul
}
else if(primera_colision == o_enchufeRojo){
	global.colorcable = s_cableRojo
	cable = o_puzzle_controller.cablerojo
}

if (mouse_check_button_pressed(mb_right) && !instance_exists(o_guia))
{
	instance_create_layer(709,64,"Puzzle",o_guia);
}