siner += 1
if (type == 0)
{
    starx -= 8
    if (starx < -80)
    {
        starx += 80
        ioff += 2
    }
}
if (type == 2)
{
    stsp -= 0.2
    if (stsp < 0)
        stsp = 0
    starx -= stsp
}
if (type == 0 || type == 2)
{
    for (i = 0; i < 30; i += 1)
        draw_sprite_ext(spr_6shoe_star, 0, (starx + (i * 40)), (stary + (sin((siner / 9)) * 10)), 2, 2, ((siner * 4) + ((i + ioff) * 16)), c_white, 1)
    if collision_line(-20, (stary + (sin((siner / 9)) * 10)), (room_width + 20), (stary + (sin((siner / 9)) * 10)), obj_vsflowey_heart, false, true)
        event_user(1)
    if (obj_vsflowey_heart.y < (stary + (sin((siner / 9)) * 10)))
        obj_vsflowey_heart.y = (stary + (sin((siner / 9)) * 10))
}
