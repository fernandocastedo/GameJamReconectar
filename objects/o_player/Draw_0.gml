// Dibujar jugador
image_yscale = 0.70
if(right)
{
	image_xscale = 0.70;
}
else
{
	image_xscale = -0.70;
}

if(hspeed == 0)
	{
		sprite_index = s_stand;	
}
else
{
		sprite_index = s_walk;
}

// Mostrar indicador de interacción
if (near_radio==true && puzzle_active==false) {
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_text(x, y - 70, "Presiona E para usar la radio");
    draw_set_halign(fa_left); // Restaurar alineación por defecto
}
draw_self();