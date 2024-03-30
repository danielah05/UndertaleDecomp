with (blconwd)
    instance_destroy()
with (blcon)
    instance_destroy()
talked = false
whatiheard = -1
global.mnfight = 2
if (borderspec == 0)
    global.border = 7
if (obj_heart.sprite_index == spr_heartgreen)
{
    global.border = 12
    event_user(2)
}
