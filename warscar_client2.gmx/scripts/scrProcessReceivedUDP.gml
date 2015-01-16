// argument0 is the argument0er
var server_name = buffer_read(argument0, buffer_string)
if not global.connected
{
    show_debug_message("Connecting to server at: "+ip_addr_rx)
    global.ip_addr_server = ip_addr_rx
    network_connect( global.socket_client, global.ip_addr_server, 6511 )
    global.connected = true

    //ip_query_id = show_question_async("Want to connect to server ="+server_name+"?")
}

show_debug_message("Server broadcast received from "+ip_addr_rx+", name is "+server_name);

