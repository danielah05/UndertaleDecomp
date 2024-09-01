image_xscale = 3
if (global.plot > 163 || scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
{
    instance_destroy()
    return;
}
else
{
    bunny = scr_marker(154, 80, spr_royalguard_rabbit_r)
    dragon = scr_marker(184, 80, spr_royalguard_dragon_l)
    with (bunny)
        scr_depth()
    with (dragon)
        scr_depth()
}
con = 0
