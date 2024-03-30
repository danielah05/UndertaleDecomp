jtext = 0
myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
conversation = 0
if (FL_StayedAtInn == 1)
{
    conversation = 5
    global.interact = 1
    alarm[6] = 15
}
if (scr_murderlv() >= 7)
    instance_destroy()
