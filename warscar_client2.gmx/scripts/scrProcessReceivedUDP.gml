// argument0 is the rx_buffer
// argument1 is the ip_addr_rx
var server_name = buffer_read(argument0, buffer_string)
if not global.connected
{
    show_debug_message("Connecting to server at: "+argument1)
    global.ip_addr_server = argument1
    network_connect( global.socket_client, global.ip_addr_server, 6511 )
    global.connected = true

    //ip_query_id = show_question_async("Want to connect to server ="+server_name+"?")
}

show_debug_message("Server broadcast received from "+argument1+", name is "+server_name);
