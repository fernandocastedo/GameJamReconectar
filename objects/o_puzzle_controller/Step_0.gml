
//Para debug
/*
if(object_exists(o_cable)){
	show_debug_message(instance_number(o_cable))
}*/

//Contador de objetivos para luego en el o_cable cambiar el color del cable


o_player.can_move = false

if(room == Puzzlelvl1)TotalObjetivos=3
else if(room == Puzzlelvl2)TotalObjetivos=5
else if(room == Puzzlelvl2)TotalObjetivos=7

if(global.objetivosAlcanzados = TotalObjetivos){
	room_goto_previous()
	instance_destroy();
}


/*
if (global.puzzle_completed) {
    draw_set_color(c_green);
    draw_text(room_width / 2, room_height - 50, "¡PUZZLE COMPLETADO!");
}
