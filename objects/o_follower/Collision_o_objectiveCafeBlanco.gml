/// @description Insert description here
// You can write your code in this editor

if(o_objectiveCafeBlanco.connected ==0 and o_objectiveCafeBlanco.CableObjetivo == global.colorcable )
{
	o_cable.connected =1
	global.objetivosAlcanzados+=1
	o_enchufeCafeBlanco.connected +=1
	instance_destroy();
	
}
else{
	with(o_cable){
		if(connected=false)
		instance_destroy();
	}
	audio_play_sound(snd_wrong, 0, false)
	instance_destroy();	
}

