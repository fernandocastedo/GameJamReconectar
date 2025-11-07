x = mouse_x
y = mouse_y

show_debug_message(primera_colision)

if(!instance_exists(o_follower))
{
	primera_colision = noone
}
if(primera_colision == o_enchufeVerde){
	global.colorcable = s_cableVerde
}
else if(primera_colision == o_enchufeAzul){
	global.colorcable = s_cableAzul
}
else if(primera_colision == o_enchufeRojo){
	global.colorcable = s_cableRojo
}

if(keyboard_check(vk_control) and !object_exists(o_guia))
{
	instance_create_layer(709,64,"puzzle",o_guia);
}