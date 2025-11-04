x = mouse_x
y = mouse_y

show_debug_message(primera_colision)
show_debug_message(prueba)

if(!instance_exists(o_follower))
{
	primera_colision = noone
}
if(primera_colision == 100022){
	global.colorcable = s_cableVerde
}
else if(primera_colision == 100021){
	global.colorcable = s_cableAzul
}
else if(primera_colision == 100020){
	global.colorcable = s_cableRojo
}