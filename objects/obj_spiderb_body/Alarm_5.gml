if (mode == 1)
{
    instance_create((x - 50), ((y + 130) + (cos((sinert / 5)) * 2)), obj_spiderpour)
    g = instance_create((x + 140), ((y + 130) + (cos((sinert / 5)) * 2)), obj_spiderpour)
    g.hspeed = (-g.hspeed)
    g.gravity_direction = 220
    alarm[5] = 4
}
