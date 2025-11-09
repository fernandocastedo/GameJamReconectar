

// Inicializar globals por si no existen (evita errores)
if (!variable_global_exists("prev_room")) global.prev_room = undefined;
if (!variable_global_exists("pending_player_x")) global.pending_player_x = undefined;
if (!variable_global_exists("pending_player_y")) global.pending_player_y = undefined;

//Controlsprite del player
right=1
left=0


//Movimiento-------------

speedMax= 7;

accel = 0.25;

// Puzzle
can_move =true
puzzle_active = false;
near_radio = false;

//Control de acceso puzzle
puzzle_habilitado= 2