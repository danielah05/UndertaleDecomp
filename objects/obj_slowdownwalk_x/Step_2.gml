if (sl == 1)
{
	fc = 2
	if (global.tempvalue[11] == 0 && FL_MuffetUnknown == 5)
		doom = 1
	if (FL_MuffetUnknown == 6)
		doom = 2
	if (doom == 1)
	{
		if (onner == 1)
			fc = 3
		if (onner == 0)
			onner = 1
		else
			onner = 0
	}
	if (obj_mainchara.xprevious == (obj_mainchara.x - 3) || obj_mainchara.xprevious == (obj_mainchara.x - 2))
	{
		obj_mainchara.x -= fc
		obj_mainchara.moving = true
	}
	if (obj_mainchara.xprevious == (obj_mainchara.x + 3) || obj_mainchara.xprevious == (obj_mainchara.x + 2))
	{
		obj_mainchara.x += fc
		obj_mainchara.moving = true
	}
	if (obj_mainchara.yprevious == (obj_mainchara.y - 3) || obj_mainchara.yprevious == (obj_mainchara.y - 2))
	{
		obj_mainchara.y -= fc
		obj_mainchara.moving = true
	}
	if (obj_mainchara.yprevious == (obj_mainchara.y + 3) || obj_mainchara.yprevious == (obj_mainchara.y + 2))
	{
		obj_mainchara.y += fc
		obj_mainchara.moving = true
	}
	if (doom == 2)
	{
		obj_mainchara.x = obj_mainchara.xprevious
		obj_mainchara.y = obj_mainchara.yprevious
	}
}
obj_mainchara.cutscene = true
view_xview_set(0, (obj_mainchara.x - 150))
