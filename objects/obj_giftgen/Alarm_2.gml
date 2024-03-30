siner = 0
blt[bltx].image_index = 1
blt[bltx].blue = 1
blt_parent.vspeed = -2
blt_parent.hspeed = 0
blt_parent.friction = -0.3
if (global.hardmode == 1)
    blt_parent.friction = -0.5
if (rr == 2)
{
    blt_parent.vspeed = -1
    blt_parent.friction = -0.1
    rr = 3
    siner = 1
}
