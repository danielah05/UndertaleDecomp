if (x < 320)
    side = 1
if (x > 320)
{
    side = -1
    sprite_index = spr_muscbul1_r
    x -= (sprite_width - 2)
}
xs = x
offset = 0
vspeed = -3
flexspeed = 15
alarm[0] = flexspeed
