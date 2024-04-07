con = 99999
unbuffer = 0
ganer = 0
if (global.plot < 112)
{
    if (global.entrance == 1)
    {
        mkid = instance_create((obj_mainchara.x - 8), obj_mainchara.y, obj_mkid_actor)
        mkid.sprite_index = mkid.dsprite
        mkid.follow = 2.1
        con = 0
    }
}
if (global.plot == 112)
{
    con = 8
    mkid = instance_create(320, 100, obj_townnpc_monsterkid1)
    mkid.prostrate = 1
    mkid.fun = true
    mkid.sprite_index = spr_mkid_prostrate
}
ledgewall = instance_create(340, 60, obj_solidextall_2)
if (global.entrance == 1)
    side = 0
if (global.entrance == 2)
{
    side = 1
    ledgewall.x = 320
}
