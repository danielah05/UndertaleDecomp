scr_depth(0, 0, 0, 0, 0)
if (con == 1)
{
    con = 2
    musicbox = caster_load("music/musicbox.ogg")
    caster_loop(musicbox, 0.25, 0.9)
    image_index = 1
    boxactive = 1
    mask.image_index = 1
}
if (boxactive == 1 && instance_exists(obj_mainchara))
{
    disto = distance_to_object(obj_mainchara)
    if (disto < 76)
        caster_set_volume(musicbox, ((100 - disto) / 100))
}
