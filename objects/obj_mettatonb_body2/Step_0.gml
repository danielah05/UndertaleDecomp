image_angle = (pspeed[1] * 2)
pspeed[0] = hspeed
for (i = 4; i > 0; i -= 1)
    pspeed[i] = pspeed[(i - 1)]
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heartshot, 0, 1) && tang == 1)
{
    if instance_exists(obj_mettatonb_second)
    {
        snd_play(snd_damage)
        jimbo = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heartshot, 0, 1)
        with (jimbo)
            instance_destroy()
        hit += 1
        if (hit < 8)
            alarm[5] = 60
        if (shudderon == 0)
            shudderon = 1
        shudder = 10
    }
    if instance_exists(obj_mettatonb_third)
    {
        if (hitted == 0)
        {
            hitted = 1
            alarm[3] = 30
            global.turntimer = 50
        }
        snd_play(snd_bell)
        jimbo = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heartshot, 0, 1)
        gi = instance_create(jimbo.x, jimbo.y, obj_heartshot_bounceaway)
        gi.image_yscale = jimbo.image_yscale
        with (jimbo)
            instance_destroy()
    }
}
if (shudderon == 1)
{
    if (sha == 0)
        sha = x
    x = (sha + shudder)
    if (shudder < 0)
        shudder = (-((shudder + 1)))
    else
        shudder = (-shudder)
    if (shudder == 0)
    {
        sha = 0
        shudderon = 0
    }
}
