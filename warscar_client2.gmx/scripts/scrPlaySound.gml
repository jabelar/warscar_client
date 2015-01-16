// argument0 is rx_buff
var sound_type = buffer_read(argument0, buffer_u32)
var sound_x = buffer_read(argument0, buffer_u32);
var sound_y = buffer_read(argument0, buffer_u32);
switch sound_type
{
    case MAIN_GUN:
    {
        audio_play_sound_at(sndMainGun, sound_x, sound_y, 0, room_width*1.5, room_width*2, 1, false, 100)
        break;
    }
}

