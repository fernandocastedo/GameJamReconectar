/// @description Insert description here
// You can write your code in this editor


// Fondo semi-transparente
draw_set_color(make_color_rgb(0, 0, 0));
draw_set_alpha(0.7);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Instrucciones
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width / 2, 30, "CONECTA LOS CABLES DEL MISMO COLOR");
draw_text(room_width / 2, 60, "Haz clic en un enchufe para crear un cable");
draw_text(room_width / 2, 80, "Arrástralo hasta el enchufe del mismo color");
draw_text(room_width / 2, 100, "ENTER para continuar");

// Mensaje de completado
