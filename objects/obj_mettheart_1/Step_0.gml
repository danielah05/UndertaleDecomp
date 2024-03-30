if (movetype == 0)
{
    x = (xstart + (sin((s / sp)) * sf))
    if (shake == 0)
        s += 1
    if (shake > 0)
    {
        x = ((memx + random((shake * 2))) - shake)
        y = ((memy + random((shake * 2))) - shake)
        shake -= 1
    }
}
lightning_timer += 1
if (lightning_timer > 50 && lightning_timer < 60)
{
    ddir = random(360)
    image_speed = 0.5
}
if (lightning_timer == 60)
{
    image_speed = 0
    i = 0
    repeat (10)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.1
        lt.direction = ((0 + ((i * 360) / 10)) + ddir)
        i += 1
    }
}
if (lightning_timer == 66)
{
    image_speed = 0
    i = 0
    repeat (10)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.1
        lt.direction = ((0 + (((i + 0.5) * 360) / 10)) + ddir)
        i += 1
    }
}
if (lightning_timer == 72)
{
    image_speed = 0
    i = 0
    repeat (10)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.1
        lt.direction = ((0 + ((i * 360) / 10)) + ddir)
        i += 1
    }
}
if (movetype == 99)
{
    if (lightning_timer == 110)
    {
        i = 0
        repeat (7)
        {
            bb[i] = instance_create((global.idealborder[0] + (i * 25)), 100, obj_npc_marker)
            bb[i].sprite_index = spr_blackbox_pl
            i += 1
        }
    }
    if (lightning_timer > 110 && lightning_timer < 125)
    {
        i = 0
        repeat (7)
        {
            if (bb[i].visible == false)
                bb[i].visible = true
            else
                bb[i].visible = false
            i += 1
        }
    }
    if (lightning_timer == 125)
    {
        lightning_timer = 40
        i = 0
        repeat (7)
        {
            with (bb[i])
                instance_destroy()
            br[i] = instance_create((global.idealborder[0] + (i * 25)), 100, obj_blackbox_pl)
            br[i].friction = -0.05
            br[i].vspeed -= random(0.2)
            i += 1
        }
    }
}
if (lightning_timer == 95)
{
    mt = instance_create(global.idealborder[0], -20, obj_mettfodder)
    mt.vspeed = 5
    mt.type = 2
    mt.early = 200
    mt = instance_create((global.idealborder[1] - 25), -20, obj_mettfodder)
    mt.vspeed = 5
    mt.early = 200
    mt.type = 2
}
if (lightning_timer == 130)
    lightning_timer = 36
life -= 1
