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

player1_x = room0.room_width/4
player1_y = room0.room_height/2
player_x = room0.room_width/2
player_y = room0.room_height/2

global.connected = false