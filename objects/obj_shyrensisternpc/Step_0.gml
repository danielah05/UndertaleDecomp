buffer -= 1
if (buffer > 0 && myinteract == 1)
    myinteract = 0
if (myinteract == 1 && global.interact == 0)
{
    caster_play(mus_sfx_generate, 0.6, 0.6)
    myinteract = 2
    global.interact = 1
    image_speed = 0.2
    sistext = instance_create(0, 0, obj_sistertext)
    if (talkedto == 1)
    {
        with (sistext)
            phrase = scr_gettext("obj_shyrensisternpc_74")
    }
    if (talkedto == 2)
    {
        with (sistext)
            phrase = scr_gettext("obj_shyrensisternpc_75")
    }
}
if (myinteract == 2)
{
    if (!instance_exists(sistext))
    {
        talkedto += 1
        if (talkedto == 3)
            talkedto = 0
        image_speed = 0
        image_index = 0
        myinteract = 0
        global.interact = 0
        buffer = 4
    }
}
