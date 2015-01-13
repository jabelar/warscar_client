if gamepad_button_check(1, gp_padd) then player_y += 8
if gamepad_button_check(1, gp_padu) then player_y -= 8
if gamepad_button_check(1, gp_padr) then player_x += 8
if gamepad_button_check(1, gp_padl) then player_x -= 8

if player_x > room0.room_width then player_x = 0
if player_x < 0 then player_x = room0.room_width
if player_y > room0.room_height then player_y = 0
if player_y < 0 then player_y = room0.room_height

object1.x = player1_x
object1.y = player1_y
object2.x = player_x
object2.y =player_y




buffer_seek(tx_buff_client, buffer_seek_start, 0)
buffer_write(tx_buff_client, buffer_u8, 1) // position update
buffer_write(tx_buff_client, buffer_s32, player_x)
buffer_write(tx_buff_client, buffer_s32, player_y)
network_send_packet( global.socket_client, tx_buff_client, buffer_tell(tx_buff_client) )
