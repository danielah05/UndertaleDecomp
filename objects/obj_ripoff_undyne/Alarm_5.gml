with (blconwd)
    instance_destroy()
with (blcon)
    instance_destroy()
talked = false
global.mnfight = 2
global.border = 18
if (obj_heart.sprite_index == spr_heartgreen)
{
    global.border = 12
    event_user(2)
}
