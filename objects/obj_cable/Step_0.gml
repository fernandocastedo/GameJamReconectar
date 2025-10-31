if (dragging && !connected) {
    // Seguir el mouse
    cable_end_x = mouse_x;
    cable_end_y = mouse_y;
    
    // ACTUALIZAR PUNTOS (código directo)
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
    
    // Verificar si está sobre un enchufe destino
    target_socket = noone;
    with (obj_socket_end) {
        if (point_distance(mouse_x, mouse_y, x, y) < radius && !connected) {
            target_socket = id;
        }
    }
    
    // Al soltar el clic
    if (mouse_check_button_released(mb_left)) {
        dragging = false;
        
        // Intentar conectar
        if (target_socket != noone && target_socket.my_color == cable_color) {
            // Conexión exitosa
            cable_end_x = target_socket.x;
            cable_end_y = target_socket.y;
            connected = true;
            target_socket.connected = true;
            target_socket.cable_id = id;
            
            // Marcar el socket de inicio como conectado
            start_socket.connected = true;
            
            // Actualizar puntos finales del cable
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
        } else {
            // Conexión fallida - destruir cable
            instance_destroy();
        }
    }
}

// Permitir desconexión con clic derecho
if (connected && mouse_check_button_pressed(mb_right)) {
    // Verificar si se hizo clic cerca del extremo del cable
    if (point_distance(mouse_x, mouse_y, cable_end_x, cable_end_y) < 30) {
        // Desconectar
        target_socket.connected = false;
        target_socket.cable_id = noone;
        start_socket.connected = false;
        instance_destroy();
    }
}