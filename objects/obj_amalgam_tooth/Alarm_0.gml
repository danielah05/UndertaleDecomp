if (top == 1)
{
    y = (global.idealborder[2] - sprite_height)
    vspeed = 2
    alarm[4] = 20
}
if (top == 0)
{
    y = global.idealborder[3]
    sprite_index = spr_amalgam_toothd
    mask_index = spr_amalgam_toothmask_d
    vspeed = -2
    alarm[4] = 20
}
visible = true
