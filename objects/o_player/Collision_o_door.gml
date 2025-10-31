if (!keyboard_check_pressed(vk_enter)) exit;

// --- 0) Room1 ---
if (room == Room1) {
    global.prev_room = room;
    global.pending_player_x = 16; // offset lógico
    global.pending_player_y = undefined;
    room_goto_next();
    exit;
}

// --- 1) Guardar la puerta de Room2 desde la que salimos ---
if (room == Room2) {
    global.last_door_x = other.entry_x; // para volver al Room2
    global.last_door_id = other.door_id; // opcional

    // --- NUEVO: Entradas a Room3..6 desde puerta 2 a 5 → colocar x=16 ---
    if (other.door_id >= 2 && other.door_id <= 5) {
        global.pending_player_x = 16; // posición inicial en el nuevo room
    } else {
        global.pending_player_x = other.entry_x; // posición normal
    }

    global.pending_player_y = other.entry_y;
}

// --- 2) Si la puerta define target_room, vamos a esa room ---
if (variable_instance_exists(other, "target_room") && other.target_room != undefined) {
    global.prev_room = room;

    room_goto(other.target_room);
    exit;
}

// --- 3) Room3..6 → volver a Room2 usando last_door_x ---
if (room == Room3 || room == Room4 || room == Room5 || room == Room6) {
    if (variable_global_exists("last_door_x") && global.last_door_x != undefined) {
        global.pending_player_x = global.last_door_x; // frente a la puerta correcta de Room2
        global.pending_player_y = undefined;
        var destino = Room2;
        global.prev_room = undefined;
        global.last_door_x = undefined;
        global.last_door_id = undefined;

        room_goto(destino);
        exit;
    } else {
        global.pending_player_x = 0;
        room_goto(Room2);
        exit;
    }
}

// --- 4) Room2 → Room1/Room3..6 según rangos X ---
if (room == Room2) {
    if (x >= 0   && x <= 64) { 
        global.prev_room = room;
        global.pending_player_x = 16; // offset lógico
        global.pending_player_y = undefined;
        room_goto(Room1);
        exit;
    }
    if (x >= 541 && x <= 607) { global.prev_room=room; global.last_door_x=541; room_goto(Room3); exit; }
    if (x >= 802 && x <= 863) { global.prev_room=room; global.last_door_x=802; room_goto(Room4); exit; }
    if (x >= 989 && x <= 1055){ global.prev_room=room; global.last_door_x=989; room_goto(Room5); exit; }
    if (x >= 1241 && x <=1307){ global.prev_room=room; global.last_door_x=1241; room_goto(Room6); exit; }
}











