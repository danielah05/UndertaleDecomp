dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
if (room == room_fire_walkandbranch)
{
    if (scr_murderlv() >= 12)
    {
        ff = instance_create(80, 100, obj_kitchenforcefield)
        ff.image_yscale = 3
    }
}
if (scr_enemynpc3() != 1)
    instance_destroy()
if (scr_murderlv() >= 12)
    instance_destroy()
