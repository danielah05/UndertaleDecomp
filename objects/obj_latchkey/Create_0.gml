myinteract = 0
image_xscale = 1
image_yscale = 1
if (room == room_kitchen_final)
{
	if (FL_HaveCastleKey1 == 1)
		instance_destroy()
}
if (room == room_asghouse3)
{
	if (FL_HaveCastleKey2 == 1)
		instance_destroy()
}
con = 0
