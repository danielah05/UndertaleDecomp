visible = true
if (type == 0)
{
    y = ((arb2 + 1) + random(((arb - arb2) - 2)))
    vspeed = (1 + random(2))
    vspeed *= choose(1, -1)
    rope = instance_create(x, (y + 170), obj_ropebul)
    if instance_exists(rope)
    {
        rope.dmg = dmg
        rope.type = 1
        rope.vspeed = vspeed
    }
    go = 1
    for (i = 0; i < 3; i += 1)
    {
        fire = instance_create(x, ((y + 120) + (i * 14)), obj_orangefire)
        if instance_exists(fire)
        {
            fire.parent = id
            fire.dmg = dmg
            with (fire)
                event_user(0)
        }
    }
}
