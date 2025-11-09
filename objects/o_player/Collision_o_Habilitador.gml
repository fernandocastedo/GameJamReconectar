/* Codigo deshabilitado temporalmente para testing
if(puzzle_habilitado== "1")
{
	
}
*/
show_debug_message(puzzle_habilitado)
/*codigo final*/
if(keyboard_check_pressed(ord("E"))and puzzle_habilitado == 1){
	room_goto(Puzzlelvl1)
}
//codigo de prueba
if(keyboard_check_pressed(ord("E"))and puzzle_habilitado == 2)room_goto(Puzzlenivel2)
if(keyboard_check_pressed(ord("E"))and puzzle_habilitado == 3)room_goto(Puzzlenivel3)
/*
if(keyboard_check_pressed(ord("E"))and puzzle_habilitado == 4)room_goto(Puzzlenivel4)

