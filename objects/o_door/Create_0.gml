/// Create - o_door
// Opciones por puerta (ajusta según dónde la pongas en el room)
target_room = undefined; // Room destino
entry_x = 0;             // x de entrada del jugador en el room destino
entry_y = undefined;     // opcional, y del jugador
back = false;            // si true, esta puerta sirve para "volver al prev_room"
door_id = 0;             // identificador único de la puerta (para recordar por cuál entró)