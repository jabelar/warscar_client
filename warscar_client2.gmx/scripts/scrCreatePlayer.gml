// argument0 is rx_buff
var player_id = buffer_read(argument0, buffer_u8)
var player_x = buffer_read(argument0, buffer_s32);
var player_y = buffer_read(argument0, buffer_s32);
var player_speed = buffer_read(argument0, buffer_s32);
var player_dir = buffer_read(argument0, buffer_s32);
var new_instance = instance_create(player_x, player_y, player_obj[player_id]);
new_instance.speed = player_speed
new_instance.direction = player_dir
new_instance.image_angle = player_dir
show_debug_message("Player created for player "+string(player_id+1))
