check = 0
if (room == room_water_blookhouse)
{
    event_user(2)
    if (FL_CurrentNapstablookSong == 0)
        alarm[0] = 15
    check = 1
}
if (room == room_water_blookyard || room == room_water_redacted || room == room_water_friendlyhub || room == room_battle)
    check = 1
if (check == 0)
    event_user(1)
