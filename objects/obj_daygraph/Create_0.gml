die = 0
currenthour = current_hour
if (currenthour <= 6 || currenthour >= 18)
    image_index = 0
else
    image_index = 1
alarm[0] = 1800
image_speed = 0
weekday = current_weekday
if (weekday == 7)
    day = scr_gettext("obj_daygraph_0")
else
    day = scr_gettext(("obj_daygraph_" + string(weekday)))
rot = 0
