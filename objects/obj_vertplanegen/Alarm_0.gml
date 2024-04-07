gen = instance_create(((global.idealborder[0] + 20) + random((c_borderwidth(0) - 70))), 50, obj_vertplanebullet)
if instance_exists(gen)
{
    gen.dmg = dmg
    gen.parent = parent
    gen.green = green
}
if (green == 1)
{
    with (gen)
        event_user(0)
}
alarm[0] = rate
if (green == 1)
    alarm[0] += 10
