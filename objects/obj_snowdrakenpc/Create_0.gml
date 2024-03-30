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
if (scr_enemynpc1() != 1)
    instance_destroy()
if (FL_TruePacifist == true)
{
    instance_create((x + 40), (y - 8), obj_npc_room)
    instance_create((x + 100), y, obj_snowdrakedad)
}
