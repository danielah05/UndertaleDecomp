global.interact = 3
if (touched == false)
{
    var fader = instance_create(0, 0, obj_unfader)
    fader.tspeed = 0.15
    alarm[2] = 8
    touched = true
}
