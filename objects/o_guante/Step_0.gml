x = mouse_x
y = mouse_y

//show_debug_message(primera_colision)

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
//cables puzzle 2 (P2)
else if(primera_colision == o_enchufeRojo2){
	global.colorcable = s_cableRojo
	cable = o_puzzle_controller.cablerojo
}
else if(primera_colision == o_enchufeAzul2){
	global.colorcable = s_cableAzul
	cable = o_puzzle_controller.cableazul
}
//cables puzzle 3 (P3) son en total 8 cables nuevos distintos
else if(primera_colision == o_enchufeAmarilloBlanco){ // 1
	global.colorcable = s_cableAmarilloConBlanco
	cable = o_puzzle_controller.cableamarilloblanco
}
else if(primera_colision == o_enchufeAmarillo){ //2
	global.colorcable = s_cableAmarillo
	cable = o_puzzle_controller.cableamarillo
}

else if(primera_colision == o_enchufeVerdeBlanco){ //3
	global.colorcable = s_cableVerdeConBlanco
	cable = o_puzzle_controller.cableaverdeblanco 
}
else if(primera_colision == o_enchufeCeleste){ //4
	global.colorcable = s_cableCeleste
	cable = o_puzzle_controller.cableceleste
}
else if(primera_colision == o_enchufeCelesteBlanco){ //5
	global.colorcable = s_cableCelesteConBlanco
	cable = o_puzzle_controller.cablecelesteblanco
}
else if(primera_colision == o_enchufeVerde_P3){ //6
	global.colorcable = s_cableVerde
	cable = o_puzzle_controller.cableverde
}
else if(primera_colision == o_enchufeCafeBlanco){ //7
	global.colorcable = s_cableCafeConBlanco
	cable = o_puzzle_controller.cablecafeblanco
}
else if(primera_colision == o_enchufeCafe){ //8
	global.colorcable = s_cableCafe
	cable = o_puzzle_controller.cablecafe
}

// Código para el mirror

if(o_puzzle_controller.mirror == true){
	/*if(x <= 1){
		var new_x = 600
		x = new_x;
		window_mouse_set(x, mouse_y);
		if(instance_exists(o_follower))o_follower.x = 708
		
	}*/
	 if(x >= 709){
		var new_x = 100;
        x = new_x;
		window_mouse_set(x, mouse_y);
		if(instance_exists(o_follower))o_follower.x = 16
	}
}




if (mouse_check_button(mb_right)) {
    if (!instance_exists(o_guia)) {
        instance_create_layer(709, 64, "Puzzle", o_guia);
    } else {
        with (o_guia) instance_destroy();
    }
}
if(instance_exists(o_guia))show_debug_message(o_guia.x)

/*else if(instance_exists(o_guia)){
	o_guia.vspeed =+0.25
}*/


