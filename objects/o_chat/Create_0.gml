/// @description Insert description here
// You can write your code in this editor

s_screen = sprite_create_from_surface(application_surface,0,0,1000,710,0,0,0,0);
instance_deactivate_all(1);
 
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);
 
chat = ds_queue_head(global.list_chat);
ds_queue_dequeue(global.list_chat);
