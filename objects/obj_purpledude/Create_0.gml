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
con = 0
if (global.plot < 110)
    instance_destroy()
if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
    y = 900
if (global.entrance == 24)
{
    global.interact = 1
    con = 20
    visible = false
    obj_mainchara.visible = false
    obj_mainchara.x = x
    obj_mainchara.y = (y - 15)
}
