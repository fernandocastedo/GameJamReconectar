/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if(instance_exists(o_player)){
	switch o_player.puzzle_habilitado {
		case 1:
			room_goto(Puzzlelvl1)
		break;
		case 2:
			room_goto(Puzzlenivel2)
		break;
		case 3:
			room_goto(Puzzlenivel3)
		break;
		case 4:
			room_goto(Puzzlenivel4)
		break;
		case 5:
			room_goto(Puzzlenivel5)
		break;
	}
	
}
else{
	room_goto(Escena2)
}
