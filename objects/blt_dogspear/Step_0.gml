blut += 1
if (blut > 21)
{
    image_index = 1
    blue = BulletType.Blue
}
if (blut > 42)
{
    blut = 0
    blue = BulletType.Normal
    image_index = 0
}
if (stage == 0 && y < global.idealborder[2])
{
    stage = 1
    y = global.idealborder[2]
    vspeed = 0
    hspeed = -4
}
