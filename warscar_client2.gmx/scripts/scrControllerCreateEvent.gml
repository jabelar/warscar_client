show_debug_message("Controller create event started")

scrConstants()

alarm[0] = room_speed * 3

show_debug_message("Running client side")
global.socket_client = network_create_socket(network_socket_tcp)
show_debug_message("Creating socket ="+string(global.socket_client))
global.ip_addr_rx = "192.168.1.0"
// create network buffer for sent messages
show_debug_message("Creating transmit buffer")
tx_buff_client = buffer_create( 256, buffer_grow, 1)

show_debug_message("Creating listener to listen for server broadcasts")
global.socket_listener = network_create_server(network_socket_udp, 6511, 3)

player_x[PLAYER1] = room0.room_width/4
player_y[PLAYER1] = room0.room_height/2
player_x[PLAYER2] = room0.room_width/2
player_y[PLAYER2] = room0.room_height/2

key_up = false
key_down = false
key_right = false
key_left = false
key_weapon = false

global.connected = false