scr_depth()
buffer2 = 0
myinteract = 0
talked = false
hd = 1
fuzzfactor = 1
con = 0
selected = -1
speedfactor = 1
missdog = 0
oshibonus = 0
flashtimer = 0
drawmessage = 0
curcolor = 0
buffer = 0
dognumber = -1
sans = 0
mewmew = 0
mewmew_special = 0
coins = 50
for (i = 0; i < 3; i += 1)
{
	sloty[i] = 0
	slotno[i] = 0
	slotyspeed[i] = 0
	slotconfirm[i] = 0
}
slotmax[0] = 12
slotmax[1] = 12
slotmax[2] = 11
slot[0, 0] = 4
slot[0, 1] = 6
slot[0, 2] = 2
slot[0, 3] = 1
slot[0, 4] = 3
slot[0, 5] = 5
slot[0, 6] = 2
slot[0, 7] = 1
slot[0, 8] = 4
slot[0, 9] = 5
slot[0, 10] = 1
slot[0, 11] = 3
slot[0, 12] = 4
slot[0, 13] = 6
slot[1, 0] = 2
slot[1, 1] = 6
slot[1, 2] = 3
slot[1, 3] = 1
slot[1, 4] = 4
slot[1, 5] = 5
slot[1, 6] = 2
slot[1, 7] = 1
slot[1, 8] = 3
slot[1, 9] = 4
slot[1, 10] = 5
slot[1, 11] = 1
slot[1, 12] = 2
slot[1, 13] = 6
slot[2, 0] = 1
slot[2, 1] = 6
slot[2, 2] = 2
slot[2, 3] = 4
slot[2, 4] = 1
slot[2, 5] = 3
slot[2, 6] = 2
slot[2, 7] = 1
slot[2, 8] = 4
slot[2, 9] = 3
slot[2, 10] = 5
slot[2, 11] = 1
slot[2, 12] = 6
message = " "
bonusmessage[0] = scr_gettext("obj_inuslot_4")
bonusmessage[1] = scr_gettext("obj_inuslot_5")
bonusmessage[2] = scr_gettext("obj_inuslot_6")
bonusmessage[3] = scr_gettext("obj_inuslot_7")
bonusmessage[4] = scr_gettext("obj_inuslot_8")
bonusmessage[5] = scr_gettext("obj_inuslot_9")
bonusmessage[6] = scr_gettext("obj_inuslot_10")
bonusmessage[7] = scr_gettext("obj_inuslot_11")
bonusmessage[8] = scr_gettext("obj_inuslot_12")
bonusmessage[9] = scr_gettext("obj_inuslot_13")
bonustimer = 0
message2 = " "
for (i = 0; i < 16; i += 1)
{
	os[i] = spr_inuslot_slots
	ox[i] = -100
	oy[i] = -100
}
os[0] = spr_ds3_sign
ox[0] = 45
oy[0] = 57
inusign = instance_create(ox[0], oy[0], obj_ds3_box)
os[1] = spr_ds3_cashbox
ox[1] = 75
oy[1] = 56
inubox1 = instance_create(ox[1], oy[1], obj_ds3_box)
os[2] = spr_ds3_coinbox
ox[2] = 106
oy[2] = 56
inubox2 = instance_create(ox[2], oy[2], obj_ds3_box)
if (FL_DogShrineXboxProgress >= 2)
{
	os[3] = spr_ds3_heightsign
	ox[3] = 194
	oy[3] = 18
}
if (global.kills == 0 && global.plot < 176 && FL_SansDated2 == 0 && FL_DogShrineXboxDonatedCoins >= 10)
{
	sans = 1
	os[4] = spr_ds3_sans
	ox[4] = 236
	oy[4] = 7
}
if (global.plot >= 193 && FL_UndyneStatus != 1 && FL_DogShrineXboxDonatedCoins >= 10)
{
	mewmew = 1
	os[5] = spr_ds3_mewmew
	ox[5] = 232
	oy[5] = 1
}
if (FL_DogShrineXboxDonatedCoins >= 10)
{
	os[6] = spr_ds3_pokertable
	ox[6] = 220
	oy[6] = 22
}
if (FL_DogShrineXboxX3Dogs == 1)
{
	os[7] = spr_ds3_statue
	ox[7] = 244
	oy[7] = 62
}
if (FL_DogShrineXboxDonatedCoins >= 50)
{
	os[8] = spr_ds3_fastfood
	ox[8] = 254
	oy[8] = 127
}
if (FL_DogShrineXboxDonatedCoins >= 200)
{
	os[9] = spr_ds3_treaty
	ox[9] = 231
	oy[9] = 154
}
if (FL_DogShrineXboxX3Bones == 1)
{
	os[10] = spr_ds3_creams
	ox[10] = 206
	oy[10] = 156
}
if (FL_DogShrineXboxDonatedCoins >= 100)
{
	os[11] = spr_ds3_hat
	ox[11] = 181
	oy[11] = 166
}
if (FL_DogShrineXboxX3Ghosts == 1)
{
	os[12] = spr_ds3_ticket
	ox[12] = 123
	oy[12] = 165
}
if (FL_DogShrineXboxDonatedCoins >= 350)
{
	os[13] = spr_ds3_kinect
	ox[13] = 87
	oy[13] = 159
}
if (FL_DogShrineXboxDonatedCoins >= 25)
{
	os[14] = spr_ds3_console
	ox[14] = 40
	oy[14] = 149
}
if (FL_DogShrineXboxX3Cherries == 1)
{
	os[15] = spr_ds3_drinks
	ox[15] = 43
	oy[15] = 118
}
for (i = 3; i < 16; i += 1)
{
	oo[i] = instance_create(ox[i], oy[i], obj_ds3_marker)
	oo[i].sprite_index = os[i]
	oo[i].image_index = 0
	with (oo[i])
		scr_depth()
	osolid[i] = instance_create(oo[i].bbox_left, oo[i].bbox_top, obj_solidsmall)
	osolid[i].image_xscale = ((oo[i].bbox_right - oo[i].bbox_left) / 20)
	osolid[i].image_yscale = ((oo[i].bbox_bottom - oo[i].bbox_top) / 20)
	if (i >= 9 && i <= 14)
	{
		with (osolid[i])
			image_yscale *= 2
	}
	oreadable[i] = instance_create(oo[i].bbox_left, oo[i].bbox_top, obj_readable_room5)
	oreadable[i].image_xscale = ((oo[i].bbox_right - oo[i].bbox_left) / 20)
	oreadable[i].image_yscale = ((oo[i].bbox_bottom - oo[i].bbox_top) / 20)
	oreadable[i].dognumber = i
	oreadable[i].mewmew = mewmew
	oreadable[i].sans = sans
}
