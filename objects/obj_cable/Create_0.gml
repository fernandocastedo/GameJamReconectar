start_socket = noone;
cable_end_x = x;
cable_end_y = y;
dragging = true;
connected = false;
cable_color = 0;
target_socket = noone;
cable_points = [];

// Inicializar puntos del cable (código directo)
if (start_socket != noone) {
    var socket_start_x = start_socket.x;
    var socket_start_y = start_socket.y;
    
    cable_points = [];
    cable_points[0] = [socket_start_x, socket_start_y];
    
    var middle_x = (socket_start_x + cable_end_x) / 2;
    var middle_y = (socket_start_y + cable_end_y) / 2 - 50;
    
    var num_segments = 10;
    for (var i = 1; i < num_segments; i++) {
        var progress = i / num_segments;
        var point_x = (1 - progress) * (1 - progress) * socket_start_x + 2 * (1 - progress) * progress * middle_x + progress * progress * cable_end_x;
        var point_y = (1 - progress) * (1 - progress) * socket_start_y + 2 * (1 - progress) * progress * middle_y + progress * progress * cable_end_y;
        cable_points[i] = [point_x, point_y];
    }
    
    cable_points[num_segments] = [cable_end_x, cable_end_y];
}