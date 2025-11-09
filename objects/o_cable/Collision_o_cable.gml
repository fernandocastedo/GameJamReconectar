/// @description Insert description here
// You can write your code in this editor
/*intento 1 
if(global.colorcable != o_cable.sprite_index){
	with(o_cable){
		if(connected==false)
		instance_destroy();
	}
	audio_play_sound(snd_wrong, 0, false)
	instance_destroy(o_follower);	
}*/



if(o_puzzle_controller.entrelazado == false){
	if (other.connected==1 and colorfinal !=other.sprite_index ) {
    with (other) {
        instance_destroy();
		audio_play_sound(snd_wrong, 0, false);
	}
	with(o_cable){
		if(connected=false)
		instance_destroy();
	}
	if (instance_exists(o_follower))instance_destroy(o_follower);
	
	instance_destroy()
	}
}


