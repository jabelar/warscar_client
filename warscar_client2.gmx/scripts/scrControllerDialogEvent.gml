var i_d = ds_map_find_value(async_load, "id");
if i_d == ip_query_id
   {
   if ds_map_find_value(async_load, "status")
      {
      // if ds_map_find_value(async_load, "result") != ""
         // {
         show_debug_message("dialog has result")
         // global.ip_addr_rx = ds_map_find_value(async_load, "result");
         // start listening for network traffic
         global.connected = network_connect( global.socket_client, global.ip_addr_server, 6511 )

         // }
      }
   }