if (side == 1)
{
    if (offset == 0)
        blt = instance_create((global.idealborder[0] + 4), (global.idealborder[3] + 12), blt_muscbul)
    if (offset == 1)
        blt = instance_create((global.idealborder[0] - 34), (global.idealborder[3] + 12), blt_muscbul)
}
if (side == -1)
{
    if (offset == 0)
        blt = instance_create((global.idealborder[1] - 4), (global.idealborder[3] + 12), blt_muscbul)
    if (offset == 1)
        blt = instance_create((global.idealborder[1] + 34), (global.idealborder[3] + 12), blt_muscbul)
}
blt.dmg = dmg
blt.offset = offset
if (side == -1)
    side = 1
else
    side = -1
alarm[0] = firingspeed
firingspeed -= 2
