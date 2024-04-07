if (global.mnfight == 2)
    alarm[1] = (round(random(20)) + 10)
else
{
    if instance_exists(blcon)
    {
        with (blcon)
            instance_destroy()
    }
    if instance_exists(blconwd)
    {
        with (blconwd)
            instance_destroy()
    }
    return;
}
gg = floor(random(3))
if instance_exists(blcon)
{
    with (blcon)
        instance_destroy()
}
if instance_exists(blconwd)
{
    with (blconwd)
        instance_destroy()
}
if (gg == 0)
{
    xx = ((x - random((sprite_width / 2))) - 40)
    yy = (y + random((sprite_height / 3)))
}
if (gg == 1)
{
    xx = ((x + random((sprite_width / 3))) + 100)
    yy = (y + random((sprite_height / 3)))
}
if (gg == 2)
{
    xx = ((x + random(sprite_width)) - (sprite_width / 2))
    yy = (y - 18)
}
blcon = instance_create(xx, yy, obj_blconsm)
blcon.depth = 14
blcon.sprite_index = spr_blcontiny
global.msg[0] = scr_gettext("obj_movedogehead_263")
global.msg[1] = scr_gettext("obj_movedogehead_264")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
blconwd.depth = 13
