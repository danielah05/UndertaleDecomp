scr_depth(0, 0, 0, 0, 0)
STOPPER = 0
image_speed = 0.334
dsprite = spr_undyne_helmet_d
usprite = spr_undyne_helmet_u
lsprite = spr_undyne_helmet_l
rsprite = spr_undyne_helmet_r
dtsprite = spr_undyne_helmet_d
utsprite = spr_undyne_helmet_u
ltsprite = spr_undyne_helmet_l
rtsprite = spr_undyne_helmet_r
myinteract = 0
facing = Direction.Down
fun = false
npcdir = 0
d = 0
con = 0
active = true
_new = 1
sans = 0
if (FL_PapyrusStatus == PapyrusStatus.Killed)
    sans = 1
if (room == room_water_undynefinal)
    _new = 0
for (i = 0; i < 60; i += 1)
{
    rememberx[i] = x
    remembery[i] = y
}
FL_MenuDisabled = true
if (global.plot > 121)
    instance_destroy()
if (room == room_water_undynefinal2)
{
    if (global.entrance == 1)
        y = (obj_mainchara.y + 100)
    if (global.entrance == 2)
        y = (obj_mainchara.y - 100)
}
if (room == room_water_undynefinal3)
{
    if (global.entrance == 1)
        x = (obj_mainchara.x - 100)
    if (global.entrance == 2)
        x = (obj_mainchara.x + 100)
}
if (room == room_fire1)
{
    if (global.entrance == 1)
        x = (obj_mainchara.x - 60)
    if (global.entrance == 2)
        x = (obj_mainchara.x + 60)
}
