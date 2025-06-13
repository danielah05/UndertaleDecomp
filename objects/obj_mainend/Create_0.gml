con = 1
mc = instance_create(120, 20, obj_mainchara)
mc.visible = false
q = 20
if (FL_TorielStatus != TorielStatus.Killed)
{
	if (FL_PapyrusStatus <= PapyrusStatus.Spared)
	{
		if (FL_UndyneStatus != UndyneStatus.Killed)
		{
			if (global.kills < 10)
				q = 0
		}
	}
}
if (FL_TorielStatus != TorielStatus.Killed)
{
	if (global.kills >= 10)
		q = 1
}
if (FL_TorielStatus != TorielStatus.Killed)
{
	if (FL_PapyrusStatus == PapyrusStatus.Killed || FL_UndyneStatus == UndyneStatus.Killed)
		q = 1
}
if (FL_TorielStatus == TorielStatus.Killed)
{
	if (FL_UndyneStatus != UndyneStatus.Killed)
		q = 2
}
if (FL_TorielStatus == TorielStatus.Killed)
{
	if (FL_UndyneStatus == UndyneStatus.Killed)
	{
		if (FL_KilledMettaton == 0)
			q = 3
	}
}
if (FL_TorielStatus == TorielStatus.Killed)
{
	if (FL_UndyneStatus == UndyneStatus.Killed)
	{
		if (FL_KilledMettaton == 1)
		{
			if (FL_PapyrusStatus != PapyrusStatus.Killed)
				q = 4
		}
	}
}
if (FL_TorielStatus == TorielStatus.Killed)
{
	if (FL_UndyneStatus == UndyneStatus.Killed)
	{
		if (FL_KilledMettaton == 1)
		{
			if (FL_PapyrusStatus == PapyrusStatus.Killed)
				q = 5
		}
	}
}
if (FL_TorielStatus == TorielStatus.Killed)
{
	if (FL_UndyneStatus == UndyneStatus.Killed)
	{
		if (FL_KilledMettaton == 1)
		{
			if (FL_PapyrusStatus == PapyrusStatus.Killed)
			{
				if (global.kills == 4)
					q = 6
			}
		}
	}
}
if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled)
{
	if (FL_KilledMettaton == 1)
		q = 7
}
if (q == 0 || q == 1 || q == 2 || q == 4)
	global.currentsong = caster_load("music/z_ending.ogg")
if (q == 3)
	global.currentsong = caster_load("music/mtgameshow.ogg")
if (q == 5)
	global.currentsong = caster_load("music/wind.ogg")
if (q == 6 || q == 20)
	global.currentsong = caster_load("music/dogsong.ogg")
global.interact = 1
musiccon = 0
