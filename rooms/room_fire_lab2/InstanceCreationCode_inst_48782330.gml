image_xscale = 6
image_yscale = 3
xstring1 = scr_gettext("room_fire_lab2_97_0")
xno = 0
if (global.flag[7] == 0 && global.flag[493] >= 10)
{
    xstring1 = scr_gettext("room_fire_lab2_97_1")
    met = scr_marker(400, 80, spr_mett_o_upperbody)
    met.depth = 300000
}
