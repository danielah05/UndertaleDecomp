if (active == true)
{
    warning -= 1
    if (warning > 0)
    {
        if (dir == 0)
        {
            wx = (global.idealborder[0] + 8)
            wx2 = (global.idealborder[1] - 3)
            wy = (global.idealborder[3] - 3)
            wy2 = (global.idealborder[3] - height)
        }
        if (dir == 1)
        {
            wx = (global.idealborder[1] - height)
            wx2 = (global.idealborder[1] - 3)
            wy = (global.idealborder[2] + 8)
            wy2 = (global.idealborder[3] - 3)
        }
        if (dir == 2)
        {
            wx = (global.idealborder[0] + 8)
            wx2 = (global.idealborder[1] - 3)
            wy = (global.idealborder[2] + 6)
            wy2 = ((global.idealborder[2] + 5) + height)
        }
        if (dir == 3)
        {
            wx = ((global.idealborder[0] + 5) + height)
            wx2 = (global.idealborder[0] + 8)
            wy = (global.idealborder[2] + 8)
            wy2 = (global.idealborder[3] - 3)
        }
        draw_set_color(c_red)
        draw_rectangle(wx, wy, wx2, wy2, true)
    }
    else
    {
        draw_self_border()
        if (con == 1)
            con = 2
    }
}
if (con == 2)
{
    if (timer == 0)
        snd_play(snd_spearrise)
    if (timer >= 0 && timer <= 2)
    {
        if (dir == 0)
            y -= floor((height / 3))
        if (dir == 1)
            x -= floor((height / 3))
        if (dir == 2)
            y += floor((height / 3))
        if (dir == 3)
            x += floor((height / 3))
    }
    if (timer == 3)
    {
        if (dir == 0)
            cosm_y -= floor((height / 5))
        if (dir == 1)
            cosm_x -= floor((height / 5))
        if (dir == 2)
            cosm_y += floor((height / 5))
        if (dir == 3)
            cosm_x += floor((height / 5))
    }
    if (timer == 4)
    {
        cosm_x = 0
        cosm_y = 0
    }
    if (retain >= 0)
    {
        if (timer >= 4 && timer <= 8)
        {
            rr = (random(racket) - random(racket))
            rr2 = (random(racket) - random(racket))
            if (racket > 1)
                racket -= 1
            if (timer == 9)
                rr = 0
            if (timer == 9)
                rr2 = 0
            if (dir == 0)
            {
                y = ((ideal_y - height) + rr)
                x = (ideal_x + rr2)
            }
            if (dir == 1)
            {
                y = (ideal_y + rr)
                x = ((ideal_x - height) + rr2)
            }
            if (dir == 2)
            {
                y = ((ideal_y + height) + rr)
                x = (ideal_x + rr2)
            }
            if (dir == 3)
            {
                y = (ideal_y + rr)
                x = ((ideal_x + height) + rr2)
            }
        }
    }
    if (timer >= (9 + retain))
    {
        if (dir == 0)
        {
            y += floor((height / 4))
            if (y > ideal_y)
                instance_destroy()
        }
        if (dir == 1)
        {
            x += floor((height / 4))
            if (x > ideal_x)
                instance_destroy()
        }
        if (dir == 2)
        {
            y -= floor((height / 4))
            if (y < ideal_y)
                instance_destroy()
        }
        if (dir == 3)
        {
            x -= floor((height / 4))
            if (x < ideal_x)
                instance_destroy()
        }
    }
    timer += 1
}
