if (havewater == 0)
{
    FL_HaveWater = 1
    havewater = 1
    with (obj_mainchara)
    {
        dsprite = spr_maincharad_water
        rsprite = spr_maincharar_water
        usprite = spr_maincharau_water
        lsprite = spr_maincharal_water
    }
}
else
{
    event_user(2)
    FL_HaveWater = 0
    havewater = 0
    with (obj_mainchara)
    {
        dsprite = spr_maincharad
        rsprite = spr_maincharar
        usprite = spr_maincharau
        lsprite = spr_maincharal
    }
}
