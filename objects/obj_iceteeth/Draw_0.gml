draw_set_color(c_white)
i = 0
while ((global.idealborder[0] + (i * 5)) < global.idealborder[1])
{
	toothyy[i] = (y + (sin((seed + (i * factor))) * 30))
	toothxx[i] += toothspeed
	if (toothxx[i] > global.idealborder[1])
		toothxx[i] = global.idealborder[0]
	if (toothxx[i] < global.idealborder[0])
		toothxx[i] = global.idealborder[0]
	if (toothyy[i] > global.idealborder[2])
		draw_line(toothxx[i], global.idealborder[2], toothxx[i], toothyy[i])
	if ((toothyy[i] + toothdist) < global.idealborder[3])
		draw_line(toothxx[i], global.idealborder[3], toothxx[i], (toothyy[i] + toothdist))
	if collision_line(toothxx[i], global.idealborder[2], toothxx[i], (toothyy[i] - 3), obj_heart, false, true)
		event_user(1)
	if collision_line(toothxx[i], global.idealborder[3], toothxx[i], ((toothyy[i] + toothdist) + 3), obj_heart, false, true)
		event_user(1)
	i += 1
}
toothdist -= (vspeed * 2.15)
if (toothspeed < 2.4)
	toothspeed += 0.08
