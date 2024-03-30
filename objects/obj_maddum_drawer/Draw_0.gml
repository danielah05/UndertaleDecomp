if (mode == 0)
{
    rotter += 1
    rotter += (speedmod / 2)
    rot = (sin((rotter / 6)) * 30)
    rot *= rotmod
    draw_sprite_ext(spr_maddum_base, image_index, (x + 5), (y + 75), 2, 2, (-rot), c_white, 1)
    draw_sprite_ext(spr_maddum_torso, image_index, x, ((y + 35) + (rot / 4)), 2, 2, (rot / 2), c_white, 1)
    draw_sprite_ext(spr_maddum_leg, image_index, (x + 5), (y + 65), 2, 2, (rot / 3), c_white, 1)
    draw_sprite_ext(spr_maddum_head, global.faceemotion, (x - (rot / 3)), (y + (rot / 3)), 2, 2, rot, c_white, 1)
}
else
{
    draw_sprite_ext(spr_maddum_base, image_index, (x + partx[0]), (y + party[0]), 2, 2, partrot[0], c_white, 1)
    draw_sprite_ext(spr_maddum_torso, image_index, (x + partx[1]), (y + party[1]), 2, 2, partrot[1], c_white, 1)
    draw_sprite_ext(spr_maddum_leg, image_index, (x + partx[2]), (y + party[2]), 2, 2, partrot[2], c_white, 1)
    draw_sprite_ext(spr_maddum_head, global.faceemotion, (x + partx[3]), (y + party[3]), 2, 2, partrot[3], c_white, 1)
}
if (mode == 1)
{
    check = 1
    fakegrav += 0.5
    for (i = 0; i < 4; i += 1)
    {
        go[i] = 1
        if ((party[i] + y) < (global.idealborder[2] - 25))
            party[i] += fakegrav
        else
        {
            party[i] = ((global.idealborder[2] - 20) - y)
            check += 1
            go[i] = 0
        }
    }
    if (go[0] == 1)
    {
        partx[0] += 2
        partrot[0] += 2
    }
    if (go[1] == 1)
    {
        partx[1] += 4
        partrot[1] += 5
    }
    if (go[2] == 1)
    {
        partx[2] -= 1
        partrot[2] -= 3
    }
    if (go[3] == 1)
    {
        partx[3] -= 3
        partrot[3] -= 9
    }
    if (check == 4)
        mode = 3
}
if (mode == 2)
{
    dingus += 1
    for (i = 0; i < 4; i += 1)
    {
        partx[i] -= ((partx[i] - opartx[i]) / 4)
        party[i] -= ((party[i] - oparty[i]) / 4)
        partrot[i] -= ((partrot[i] - opartrot[i]) / 4)
    }
    if (dingus > 20)
    {
        dingus = 0
        mode = 0
        check = 0
    }
}
