s += 1
if (s == 1)
    sprite_index = spr_asgore_l
if (s == 2)
    sprite_index = spr_asgore_u
if (s == 3)
    sprite_index = spr_asgore_d
if (s > 3)
{
    s = 0
    sprite_index = spr_asgore_r
}
alarm[0] = 60
