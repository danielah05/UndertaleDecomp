if (go == 1)
{
    if (side == 0 && (y + sprite_height) > 400)
    {
        if (instance_exists(obj_shaker) == false)
        {
            snd_play(snd_impact)
            scr_shake(2, 2, 2)
        }
        nowx = x
        nowy = y
        go = 2
        vspeed = 0
        alarm[4] = 5
    }
    if (side == 1 && y < 250)
    {
        if (instance_exists(obj_shaker) == false)
        {
            snd_play(snd_impact)
            scr_shake(2, 2, 2)
        }
        nowx = x
        nowy = y
        go = 2
        vspeed = 0
        alarm[4] = 5
    }
}
if (go == 2)
{
    x = ((nowx - 2) + random(4))
    y = ((nowy - 2) + random(4))
}
if (go == 3)
{
    if (side == 0 && (y + sprite_height) < 250)
        instance_destroy()
    if (side == 1 && y > 400)
        instance_destroy()
}
hit = 0
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    hit = 1
if (image_index == 0)
{
    if collision_rectangle(6, 144, 33, 188, obj_heart, 0, 1)
        hit = 1
}
if (image_index == 1)
{
    if collision_rectangle(6, 6, 33, 52, obj_heart, 0, 1)
        hit = 1
}
if (hit == 1)
    event_user(0)
