/// @description Insert description here
// You can write your code in this editor

ds_queue_enqueue(global.list_chat,"Hola esto es un letrero con texto");
ds_queue_enqueue(global.list_chat,"Segundo dialogo, presiona la tecla de accion para continuar. 123456789 blah blah blah blah blah");
ds_queue_enqueue(global.list_chat,"tercer texto 3");
 
instance_create_layer(0,0,"GUI",o_chat);
 
