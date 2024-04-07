if (room != room_fire_core_laserfun)
{
    if (active != 2)
        active = true
}
global.border = 0
FL_InBattle = false
FL_TypeHeartTransition = HeartTransitionType.Normal
if (room == room_fire_core4 || room == room_fire_core_laserfun)
    FL_InBattle = true
