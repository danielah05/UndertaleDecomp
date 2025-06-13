alarm[1] = 3
canchoose = 0
add = view_xview_get(view_current)
x0 = (89 + add)
x1 = (185 + add)
x = x0
y = (210 + view_yview_get(view_current))
d = -1
if instance_exists(obj_dialoguer)
	d = obj_dialoguer.side
if (room != room_fire_operatest)
{
	if (obj_mainchara.y > (view_yview_get(view_current) + 130) || d == 0)
		y -= 155
}
mychoice = 0
global.choice = -1
choiced = false
