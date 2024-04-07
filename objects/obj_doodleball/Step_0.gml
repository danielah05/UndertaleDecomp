if (active == true)
{
    siner += 1
    if (r < maxr)
        r += 10
    for (i = 0; i < num; i += 1)
    {
        if instance_exists(child[i])
        {
            child[i].x = (x + lengthdir_x(r, (((i / num) * 360) + (siner * 2))))
            child[i].y = (y + lengthdir_y(r, (((i / num) * 360) + (siner * 2))))
        }
    }
}
if (x > 800)
    instance_destroy()
if (x < -200)
    instance_destroy()
if (y > 700)
    instance_destroy()
if (y < -200)
    instance_destroy()
if (speed > 5)
    speed -= 1
