if (global.interact == 0 && con == 0)
{
    global.interact = 1
    con = 1
    shock = caster_load("music/dununnn.ogg")
    predummy = caster_load("music/predummy.ogg")
    dummy = obj_damndummy
    obj_mainchara.cutscene = true
    curview = view_yview_get(0)
}
