dsprite = spr_papyrus_d
usprite = spr_papyrus_u
lsprite = spr_papyrus_l
rsprite = spr_papyrus_r
dtsprite = spr_papyrus_dt
utsprite = spr_papyrus_ut
ltsprite = spr_papyrus_lt
rtsprite = spr_papyrus_rt
myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
fun = false
dir = 0
rid = 0
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
    instance_destroy()
    return;
}
if (room == room_tundra_town)
{
    dir = 1
    if (FL_PapyrusDateCounter >= 4 && global.plot <= 105)
    {
        instance_destroy()
        return;
    }
    if (FL_PapyrusCallConvoCounter == 2 && FL_UndyneDateStatus == 0)
    {
        instance_destroy()
        return;
    }
    if (FL_TruePacifist == true)
    {
        instance_destroy()
        return;
    }
    if (FL_UndyneDateStatus >= 3)
        instance_create((x - 34), (y - 14), obj_undyne_friendc)
}
if (room == room_water_undyneyard)
{
    d = 0
    if (FL_PapyrusCallConvoCounter < 2)
        d = 1
    if (FL_PapyrusDateCounter < 4)
        d = 1
    if (FL_UndyneDateStatus > 0)
        d = 1
    if (d == 1)
    {
        instance_destroy()
        return;
    }
}
