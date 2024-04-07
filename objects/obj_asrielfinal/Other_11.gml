global.msg[0] = scr_gettext("obj_asrielfinal_976")
global.msg[1] = scr_gettext("obj_asrielfinal_977")
if (global.hp < global.maxhp)
{
    global.hp = global.maxhp
    snd_play(snd_heal_c)
}
