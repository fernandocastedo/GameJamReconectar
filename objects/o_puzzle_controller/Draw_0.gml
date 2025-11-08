/// @description Insert description here
// You can write your code in this editor


draw_text(130,10,"Longitud del Cable:")
draw_text(230,10, o_guante.cable)

draw_text(127,30,"Longitud Restante:")
if(instance_exists(o_follower))draw_text(230,30, o_follower.largoActual)
else{
	draw_text(230,30,"0")
}


