for (i = 0; i < 9; i += 1)
{
    blt = instance_create((x + 3), (y + 3), blt_splinter)
    blt.dmg = dmg
    blt.direction = (i * 40)
}
instance_destroy()
