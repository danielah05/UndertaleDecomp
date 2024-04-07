if (obj_mainchara.y < (room_height - 80) && obj_mainchara.y > 130)
{
    if (birbvol < 0.8)
        birbvol += 0.02
}
else if (birbvol > 0.05)
    birbvol -= 0.05
caster_set_volume(birb, birbvol)
