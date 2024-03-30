glowtotal = 0
for (var i = 0; i < instance_number(obj_glowshroom); i++)
{
    q = instance_find(obj_glowshroom, i)
    if (q.glow == 0)
        glowtotal += 1
}
i = 1
repeat (5)
{
    if (glowtotal >= i)
        tile_layer_show((1000000 + i))
    else
        tile_layer_hide((1000000 + i))
    i += 1
}
if (glowtotal >= 4 && FL_GlowshroomsOn == 0)
    FL_GlowshroomsOn = 1
