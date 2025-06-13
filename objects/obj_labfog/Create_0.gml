xx = 0
yy = 0
xxspeed = 0.5
yyspeed = 0.25
image_alpha = 0.25
sprite_index = spr_labfog
if (room == room_truelab_fan)
	image_alpha = 0.6
if (room == room_truelab_cooler)
	image_alpha = 1
if (FL_EndogenyEvent == 1)
	image_alpha = 0
