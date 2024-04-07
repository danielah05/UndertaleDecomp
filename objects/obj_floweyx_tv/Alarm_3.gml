if (global.floweyhp > 4000)
{
    with (obj_flowey_master)
        caster_play(sfx_oh, 1, (0.9 - random(0.3)))
}
else
{
    with (obj_flowey_master)
        caster_play(sfx_ted, 1, (0.9 - random(0.2)))
}
