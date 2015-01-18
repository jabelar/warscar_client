// argument0 is rx_buff
var effect_type = buffer_read(argument0, buffer_u32)
var effect_x = buffer_read(argument0, buffer_u32);
var effect_y = buffer_read(argument0, buffer_u32);
var effect_size = buffer_read(argument0, buffer_u32);
var effect_color = buffer_read(argument0, buffer_u32);
effect_create_above(effect_type, effect_x, effect_y, effect_size, effect_color)