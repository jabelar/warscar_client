key_up = false
key_down = false
key_right = false
key_left = false
key_weapon = false

if gamepad_button_check(1, gp_padd) then key_down = true 
if gamepad_button_check(1, gp_padu) then key_up = true 
if gamepad_button_check(1, gp_padr) then key_right = true 
if gamepad_button_check(1, gp_padl) then key_left = true 
key_weapon = gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check(1, gp_shoulderrb)


objPlayer1.x = player_x[PLAYER1]
objPlayer1.y = player_y[PLAYER1]
objPlayer2.x = player_x[PLAYER2]
objPlayer2.y = player_y[PLAYER2]

buffer_seek(tx_buff_client, buffer_seek_start, 0)
buffer_write(tx_buff_client, buffer_u8, INPUT) // player input
buffer_write(tx_buff_client, buffer_bool, key_up)
buffer_write(tx_buff_client, buffer_bool, key_down)
buffer_write(tx_buff_client, buffer_bool, key_right)
buffer_write(tx_buff_client, buffer_bool, key_left)
buffer_write(tx_buff_client, buffer_bool, key_weapon)

network_send_packet( global.socket_client, tx_buff_client, buffer_tell(tx_buff_client) )