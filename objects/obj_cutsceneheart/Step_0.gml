if (con == 0)
{
    caster_loop(rotatenoise, 1, 1)
    con = 1
    alarm[4] = 60
}
if (con == 1)
    image_angle += 3
if (con == 2)
{
    caster_stop(rotatenoise)
    con = 3
    alarm[4] = 30
}
if (con == 4)
{
    caster_play(createnoise, 1, 1)
    instance_create(x, y, obj_growheart)
    sprite_index = spr_heartyellow_center
    con = 5
    alarm[4] = 60
}
if (con == 6)
{
    obj_heart.movement = 1
    obj_heart.x = (x - 8)
    obj_heart.y = (y - 8)
    obj_heart.shot = 1
    obj_heart.sprite_index = spr_heartyellow_flip
    obj_mettatonb_second.con = 15
    instance_destroy()
}
if (con > 4 && keyboard_check_pressed(ord("Z")))
{
    if (instance_number(obj_heartshot) < 3)
    {
        instance_create((x - 4), (y + 2), obj_heartshot)
        snd_play(snd_heartshot)
    }
}
