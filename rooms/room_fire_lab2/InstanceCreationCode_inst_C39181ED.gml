image_xscale = 6
image_yscale = 3
xstring1 = scr_gettext("room_fire_lab2_97_0")
xno = 0
if (FL_TruePacifist == 0 && FL_DatedAlphys >= 10)
{
	xstring1 = scr_gettext("room_fire_lab2_97_1")
	met = scr_marker(400, 80, spr_mett_o_upperbody)
	met.depth = 300000
}
