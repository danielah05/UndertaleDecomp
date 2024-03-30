faketime -= 1
ok = 0
if (col <= 0 && global.interact != 1)
    ok = 1
if (faketime > 0 && global.interact != 1)
    ok = 1
if (ok == 1)
{
    faketime = -1
    snd_play(snd_noise)
    obj_bouncetileparent.goldshift = 1
    if instance_exists(obj_rblock)
        obj_rblock.goldshift = 1
    image_index = 1
    if (on == 0)
        on = 1
    else
        on = 0
}
col = 3
