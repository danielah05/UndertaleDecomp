if (nowsize < size)
    nowsize += 0.1
if (nowsize > size)
    nowsize = size
image_xscale = (nowsize + (sin((siner / 6)) * 0.1))
image_yscale = (nowsize + (sin((siner / 6)) * 0.1))
if (dont == 0)
{
    xprev4 = xprev3
    yprev4 = yprev3
    xprev3 = xprev2
    yprev3 = yprev2
    xprev2 = xprevious
    yprev2 = yprevious
    x = parent.xprev4
    y = parent.yprev4
}
if (dont == 1)
    instance_destroy()
siner += 1
