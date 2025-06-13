if (con == 0 && y >= view_yview_get(0))
{
	y = view_yview_get(0)
	vspeed = 0
	friction = 0
	con = 1
}
if instance_exists(obj_multitileevent)
	time = obj_multitileevent.cooltimer
else
	time -= 1
draw_sprite(spr_timehud_vert, 0, x, (y + 20))
if instance_exists(obj_tileguy)
	orange = obj_tileguy.orange
draw_sprite(spr_orangeindicator, (orange + 1), (x + 28), (y + 24))
thisnum = ceil((time / 30))
if (thisnum >= 0)
{
	place = 0
	numadd = 10
	if (thisnum >= numadd)
	{
		while (thisnum >= numadd)
		{
			place += 1
			numadd *= 10
		}
	}
}
else
{
	thisnum = 0
	place = 0
}
thisnum2 = thisnum
for (i = place; i >= 0; i -= 1)
{
	numnum[i] = floor((thisnum2 / power(10, i)))
	thisnum2 -= (numnum[i] * power(10, i))
}
for (i = place; i >= 0; i -= 1)
{
	draw_set_color(c_red)
	draw_sprite(spr_digitalnumber, numnum[i], ((x + 92) - (i * 9)), (y + 25))
}
if (finished == true)
{
	vspeed -= 0.5
	if (y < -50)
		instance_destroy()
}
