width = 0
le = 0
rc_cut = 0
rc_le = 0
ww1 = (global.idealborder[1] - x)
if (ww1 > 0)
    width = ww1
ww2 = (x - (global.idealborder[0] + 5))
if (ww2 < 0)
{
    le = (-ww2)
    width = (10 + ww2)
}
if (width > 10)
    width = 10
if (width < 9)
{
    rc_cut = (8 - width)
    if (rc_cut < 1)
        rc_cut = 0
}
if (le > 1)
{
    rc_le = (le - 2)
    rc_cut = 0
    if (rc_le > 8)
        rc_le = 0
}
