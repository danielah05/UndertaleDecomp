if (flowey == 1)
{
    draw_sprite_ext(spr_flowey_riseanim2, fimg, 140, 140, 1, 1, 0, c_white, 1)
    if (fimg < 8)
        fimg += 0.5
    else
        flowey = 2
}
if (flowey == 2)
{
    draw_sprite_ext(spr_flowey_riseanim2, fimg, 140, 140, 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_floweyface_l, global.faceemotion, 140, 140, 1, 1, 0, c_white, 1)
}
if (flowey == 3)
{
    draw_sprite_ext(spr_flowey_riseanim, fimg, 140, 140, 1, 1, 0, c_white, 1)
    if (fimg > 0)
        fimg -= 0.5
    else
        flowey = 4
}
