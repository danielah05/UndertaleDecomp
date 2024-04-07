ch = 0
if (sprite_index == spr_muscbul1 && ch == 0)
{
    sprite_index = spr_muscbul2
    ch = 1
}
if (sprite_index == spr_muscbul1_r && ch == 0)
{
    sprite_index = spr_muscbul2_r
    ch = 1
}
if (sprite_index == spr_muscbul2 && ch == 0)
{
    sprite_index = spr_muscbul1
    ch = 1
}
if (sprite_index == spr_muscbul2_r && ch == 0)
{
    sprite_index = spr_muscbul1_r
    ch = 1
}
alarm[0] = flexspeed
if (offset == 1)
    vspeed = -4
