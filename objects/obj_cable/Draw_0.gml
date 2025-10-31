// Dibujar cable como una serie de segmentos
if (array_length(cable_points) > 1) {
    draw_set_color(global.cable_colors[cable_color]);
    
    // Dibujar segmentos del cable
    for (var i = 0; i < array_length(cable_points) - 1; i++) {
        var point1_x = cable_points[i][0];
        var point1_y = cable_points[i][1];
        var point2_x = cable_points[i + 1][0];
        var point2_y = cable_points[i + 1][1];
        
        draw_line_width(point1_x, point1_y, point2_x, point2_y, 6);
    }
    
    // Dibujar extremo del cable
    draw_set_color(c_white);
    draw_circle(cable_end_x, cable_end_y, 8, false);
    
    // Resaltar si está sobre un enchufe compatible
    if (target_socket != noone && target_socket.my_color == cable_color) {
        draw_set_color(c_yellow);
        draw_circle(cable_end_x, cable_end_y, 12, false);
    }
}