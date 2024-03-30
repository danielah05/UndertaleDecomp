if (active > false)
{
    if (instance_exists(obj_mainchara) && lit == 0)
    {
        if (obj_mainchara.x > (x - 20) && obj_mainchara.x < (x + 50))
        {
            lit = 1
            snd_play(snd_squeak)
            sprite_index = spr_monitor_lit
            if (active == 2)
                sprite_index = spr_monitor_lit_f
        }
    }
}
