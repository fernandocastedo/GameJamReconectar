/// @description Insert description here
// You can write your code in this editor

// Guarda las instancias que existen en el room

//var enchufe = instance_find(o_enchufeInicio, 0);
//var countE = instance_number(o_enchufe);

//var countC = instance_number(o_cable)
// Guarda los IDs en un array

//cable_ids = array_create(countC);
//enchufe_ids = array_create(countE);


//Controlladores importantes
instance_create_layer(mouse_x, mouse_y,"Puzzle",o_guante)
global.objetivosAlcanzados= 0
global.colorcable = noone

switch o_player.puzzle_habilitado{
	case 1:
		cablerojo = 170
		cableverde = 160
		cableazul = 150
		mirror = false
		entrelazado = true
		TotalObjetivos = 3
	break;
	case 2:
		cablerojo = 120
		cableverde = 140
		cableazul = 150
		mirror = false
		entrelazado = false
		TotalObjetivos= 5
	break;
	case 3:
		cablerojo = 120
		cableverde = 140
		cableazul = 150
		mirror = false
		entrelazado = false
		TotalObjetivos= 5
	break;
	case 4:
		cablerojo = 120
		cableverde = 140
		cableazul = 150
		mirror = false
		entrelazado = false
		TotalObjetivos= 4
	case 5:	
		cablerojo = 200
		cableverde = 180
		cableazul = 190
		mirror = false
		entrelazado = false
		TotalObjetivos= 7
	break;
}

