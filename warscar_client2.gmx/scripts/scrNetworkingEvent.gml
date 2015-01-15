// https://www.yoyogames.com/tech_blog/11 for tutorial

// show_debug_message("networking event occurred")

var socket_id = ds_map_find_value( async_load, "id" );
var network_event_type = ds_map_find_value(async_load, "type");
var port = ds_map_find_value(async_load, "port");
var ip_addr_rx = ds_map_find_value(async_load, "ip");
var rx_buff = ds_map_find_value(async_load, "buffer");
// show_debug_message("Packet received from ip ="+string(ip_addr_rx)+", socket id ="+string(socket_id)+", port ="+string(port))

if socket_id == global.socket_client // TCP packet incoming
{
    if is_undefined(rx_buff)
    {
        show_debug_message("Packet contents undefined")
    }
    else
    {
        var packet_type = buffer_read(rx_buff, buffer_u8);
        switch packet_type
        {
            case PLAYER_POS:
            {

                player_x[PLAYER1]= buffer_read(rx_buff, buffer_s32)
                player_y[PLAYER1] = buffer_read(rx_buff, buffer_s32)
                player_x[PLAYER2]= buffer_read(rx_buff, buffer_s32)
                player_y[PLAYER2] = buffer_read(rx_buff, buffer_s32)
                // show_debug_message("Received data packet from server, player_x[PLAYER1] = "+string(player_x[PLAYER1]))
                // show_debug_message("Received data packet from server, player_x[PLAYER2] = "+string(player_x[PLAYER2]))  
                break;
            }
            case OBJ_CREATE:
            {
                var obj_type = buffer_read(rx_buff, buffer_u8);
                switch obj_type
                {
                    case OBSTACLE:
                    {
                        scrCreateObject(rx_buff, objObstacle)
                        break;
                    }
                    case BULLET:
                    {
                        scrCreateObject(rx_buff, objBullet)
                        break;
                    }
                   default: // unrecognized object type
                    {
                        show_debug_message("Unrecognized object type")
                    }
                }
                break;
            }
            case OBJ_DESTROY:
            {
                scrDestroyObject(rx_buff)
                break;
            }
            default: // unrecognized packet type
            {
                show_debug_message("Unrecognized packet type")
            }
        }
    }
}
else // UDP packet
{
    var server_name = buffer_read(rx_buff, buffer_string)
    if not global.connected
    {
        show_debug_message("Connecting to server at: "+ip_addr_rx)
        global.ip_addr_server = ip_addr_rx
        network_connect( global.socket_client, global.ip_addr_server, 6511 )
        global.connected = true

        //ip_query_id = show_question_async("Want to connect to server ="+server_name+"?")
    }

    show_debug_message("Server broadcast received from "+ip_addr_rx+", name is "+server_name);
    
}
