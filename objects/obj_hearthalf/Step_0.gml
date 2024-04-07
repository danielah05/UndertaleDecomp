if (side == 0)
{
    held = 0
    if scr_heartl_holdl()
    {
        held = 1
        if (curpos != 0)
        {
            if (moving == false)
            {
                moving = true
                idealpos = 0
            }
        }
    }
    if (scr_heartl_holdr() && held == 0)
    {
        held = 1
        if (curpos != 2)
        {
            if (moving == false)
            {
                moving = true
                idealpos = 2
            }
        }
    }
    if (vertical_ok == 1)
    {
        if (scr_heartl_holdu() && held == 0)
        {
            held = 1
            if (curpos != 3)
            {
                if (moving == false)
                {
                    moving = true
                    idealpos = 3
                }
            }
        }
        if (scr_heartl_holdd() && held == 0)
        {
            held = 1
            if (curpos != 4)
            {
                if (moving == false)
                {
                    moving = true
                    idealpos = 4
                }
            }
        }
    }
    if (moving == false && curpos != 1 && held == 0)
    {
        idealpos = 1
        moving = true
    }
}
if (side == 1)
{
    held = 0
    if scr_heartr_holdr()
    {
        held = 1
        if (curpos != 2)
        {
            if (moving == false)
            {
                moving = true
                idealpos = 2
            }
        }
    }
    if (scr_heartr_holdl() && held == 0)
    {
        held = 1
        if (curpos != 0)
        {
            if (moving == false)
            {
                moving = true
                idealpos = 0
            }
        }
    }
    if (vertical_ok == 1)
    {
        if (scr_heartr_holdd() && held == 0)
        {
            held = 1
            if (curpos != 4)
            {
                if (moving == false)
                {
                    moving = true
                    idealpos = 4
                }
            }
        }
        if (scr_heartr_holdu() && held == 0)
        {
            held = 1
            if (curpos != 3)
            {
                if (moving == false)
                {
                    moving = true
                    idealpos = 3
                }
            }
        }
    }
    if (moving == false && curpos != 1 && held == 0)
    {
        idealpos = 1
        moving = true
    }
}
if (moving == true)
{
    if (xpos[idealpos] < x)
        x -= (((x - xpos[idealpos]) / 2.4) + 1)
    if (ypos[idealpos] < y)
        y -= (((y - ypos[idealpos]) / 2.4) + 1)
    if (xpos[idealpos] > x)
        x += (((xpos[idealpos] - x) / 2.4) + 1)
    if (ypos[idealpos] > y)
        y += (((ypos[idealpos] - y) / 2.4) + 1)
    if (abs((x - xpos[idealpos])) < movespeed && abs((y - ypos[idealpos])) < 6)
    {
        x = xpos[idealpos]
        y = ypos[idealpos]
        curpos = idealpos
        moving = false
    }
}
if (global.invc > 0)
    image_speed = 0.5
else
{
    image_index = 0
    image_speed = 0
}
