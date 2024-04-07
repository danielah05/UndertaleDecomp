alarm[5] = factor
repeat (3)
{
    sm = instance_create(x, y, obj_strangeman_butterfly)
    sm.king = obj_heart
    sm.alarm[0] = -1
    sm.alarm[6] = -1
    sm.direction = (160 + random(100))
    sm.speed = 4
}
