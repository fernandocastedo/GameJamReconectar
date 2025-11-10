/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_right)) {

    if(x >=384)
	{
		sprite_index = s_guia_entreabierta
		hspeed -= accel
		if(hspeed < -speedMax) hspeed = -speedMax;
	}
	else if(x <= 380){
		hspeed = 0
		switch room{
			case Puzzlelvl1:
				sprite_index = s_guia_pag1
				break;
			case Puzzlenivel2:
				sprite_index = s_guia_pag2
				break;
			case Puzzlenivel3:
				sprite_index = s_guia_pag3
				break;
		}
	}
	
}
else{
	sprite_index = s_guia_portada

	x = 677
}




