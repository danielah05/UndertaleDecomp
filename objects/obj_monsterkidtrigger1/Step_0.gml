if (conversation == 1)
{
    t = 0
    mkid = obj_townnpc_monsterkid1
    if (obj_mainchara.x > (mkid.x + 40))
        t = 1
    if (obj_mainchara.x < (mkid.x - 40))
        t = 2
    if (t == 1)
    {
        mkid.hspeed = 3
        mkid.sprite_index = mkid.rsprite
        mkid.image_speed = 0.2
    }
    if (t == 2)
    {
        if (mkid.x > (mkid.xstart - 40))
        {
            mkid.hspeed = -3
            mkid.sprite_index = mkid.lsprite
            mkid.image_speed = 0.2
        }
        else
            t = 0
    }
    if (t == 0)
    {
        if (mkid.sprite_index == mkid.rsprite)
            mkid.image_index = 0
        mkid.hspeed = 0
        mkid.image_speed = 0
        mkid.sprite_index = mkid.dtsprite
        if ((obj_mainchara.x - mkid.x) > 16)
        {
            mkid.sprite_index = mkid.rtsprite
            mkid.con = 1
        }
        if ((obj_mainchara.x - mkid.x) < -10)
        {
            mkid.sprite_index = mkid.ltsprite
            mkid.con = 2
        }
        if (mkid.myinteract == 3)
            mkid.image_speed = 0.2
    }
}
