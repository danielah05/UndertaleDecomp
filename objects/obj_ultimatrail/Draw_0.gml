for (var i = 12; i > 0; i--)
{
    xprev[i] = xprev[(i - 1)]
    yprev[i] = yprev[(i - 1)]
}
xprev[0] = x
yprev[0] = y
draw_set_color(image_blend)
draw_line_width(xprev[10], yprev[10], xprev[12], yprev[12], 2)
draw_line_width(xprev[8], yprev[8], xprev[10], yprev[10], 4)
draw_line_width(xprev[4], yprev[4], xprev[8], yprev[8], 6)
draw_line_width(x, y, xprev[4], yprev[4], 8)
