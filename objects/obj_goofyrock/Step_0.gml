if (conversation != 9 && conversation < 15)
{
	if (place_meeting((x - 3), y, obj_mainchara) || place_meeting((x + 3), y, obj_mainchara) || place_meeting(x, (y + 3), obj_mainchara) || place_meeting(x, (y - 3), obj_mainchara))
	{
		if (can_talk && global.interact == 0 && (!talking) && path_speed == 0)
		{
			can_talk = 0
			talking = 1
			myinteract = 1
			event_inherited()
		}
	}
	else
		can_talk = 1
}
else
	event_inherited()
