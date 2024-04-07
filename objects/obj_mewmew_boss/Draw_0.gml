if (bordercon == 0)
{
    draw_set_color(c_white)
    draw_rectangle(cbx1, cby1, (cbx2 + 4), (cby1 + 4), false)
    draw_rectangle(cbx1, cby2, (cbx2 + 4), (cby2 + 4), false)
    draw_rectangle(cbx1, cby1, (cbx1 + 4), (cby2 + 4), false)
    draw_rectangle(cbx2, cby1, (cbx2 + 4), (cby2 + 4), false)
    if (border != idealborder)
    {
        if (cbx1 != bx1[idealborder])
            cbx1 += (((bx1[idealborder] - cbx1) / 3) + 1)
        if (cbx2 != bx2[idealborder])
            cbx2 += (((bx2[idealborder] - cbx2) / 3) + 1)
        if (cby1 != by1[idealborder])
            cby1 += (((by1[idealborder] - cby1) / 3) + 1)
        if (cby2 != by2[idealborder])
            cby2 += (((by2[idealborder] - cby2) / 3) + 1)
        finishpoint = 0
        if (abs((cbx1 - bx1[idealborder])) < 8)
        {
            cbx1 = bx1[idealborder]
            finishpoint += 1
        }
        if (abs((cby1 - by1[idealborder])) < 8)
        {
            cby1 = by1[idealborder]
            finishpoint += 1
        }
        if (abs((cbx2 - bx2[idealborder])) < 8)
        {
            cbx2 = bx2[idealborder]
            finishpoint += 1
        }
        if (abs((cby2 - by2[idealborder])) < 8)
        {
            cby2 = by2[idealborder]
            finishpoint += 1
        }
        if (finishpoint == 4)
        {
            border = idealborder
            cbx1 = bx1[idealborder]
            cbx2 = bx2[idealborder]
            cby1 = by1[idealborder]
            cby2 = by2[idealborder]
        }
    }
}
