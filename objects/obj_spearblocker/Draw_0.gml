draw_set_circle_precision(12)
if (flash < 2)
    draw_set_color(x_blue)
else
    draw_set_color(c_red)
flash -= 1
t = degtorad(dir)
r = 30
draw_line_width(((x - (cos(t) * r)) + ((-sin(t)) * r)), ((y + (sin(t) * r)) + ((-cos(t)) * r)), ((x + ((-cos(t)) * r)) + (sin(t) * r)), ((y + (sin(t) * r)) + (cos(t) * r)), 3)
draw_set_color(x_blue)
draw_line_width(((x - (cos(t) * r)) + ((-sin(t)) * r)), ((y + (sin(t) * r)) + ((-cos(t)) * r)), ((x + (((-(cos((t - 0.2)))) * r) / 2)) + ((sin((t - 0.2)) * r) / 2)), ((y + ((sin((t - 0.2)) * r) / 2)) + ((cos((t - 0.2)) * r) / 2)), 3)
draw_set_color(c_green)
draw_circle(x, y, r, 1)
if obj_time.down
    idealdir = 90
if obj_time.up
    idealdir = 270
if obj_time.left
    idealdir = 0
if obj_time.right
    idealdir = 180
if (dir != idealdir)
{
    if (idealdir == 0 && dir > 180)
    {
        neg = 1
        dir -= 360
    }
    if (dir >= 0 && dir < 90 && idealdir == 270)
    {
        neg = 2
        dir = 360
    }
    if (neg == 0)
    {
        dir %= 360
        dif = (idealdir - dir)
        dir += (dif * (2/3))
        if (dir < 0)
            dir += 360
        if (abs(dif) < 15)
        {
            dir = idealdir
            neg = 0
        }
    }
    if (neg == 1)
    {
        dir %= 360
        dif = abs((idealdir - dir))
        dir += (dif * (2/3))
        if (abs((abs(idealdir) - abs(dir))) < 15)
        {
            dir = idealdir
            neg = 0
        }
    }
    if (neg == 2)
    {
        dif = (idealdir - dir)
        dir += (dif * (2/3))
        if (abs((abs(idealdir) - abs(dir))) < 15)
        {
            dir = idealdir
            neg = 0
        }
    }
}
if (old == 1)
{
    if (dir != idealdir)
    {
        if ((dir - idealdir) == 180)
        {
            if (dir == 0 && idealdir == 180)
                dir -= 90
            if (dir == 90 && idealdir == 270)
                dir -= 90
            if (dir == 180 && idealdir == 0)
                dir -= 90
            if (dir == 270 && idealdir == 90)
                dir -= 90
        }
        if (dir > 0 && dir < 180 && idealdir == 0)
            dir -= 60
        if (dir > 180 && dir < 360 && idealdir == 180)
            dir -= 60
        if (dir > 90 && dir < 270 && idealdir == 90)
            dir -= 60
        if (dir > 270 || (dir <= 0 && idealdir == 270))
            dir -= 60
        dir += 30
        dir %= 360
        if (dir < 0)
            dir += 360
    }
}
tideal = degtorad(idealdir)
col = collision_line(((x - (cos(tideal) * r)) + ((-sin(tideal)) * r)), ((y + (sin(tideal) * r)) + ((-cos(tideal)) * r)), ((x + ((-cos(tideal)) * r)) + (sin(tideal) * r)), ((y + (sin(tideal) * r)) + (cos(tideal) * r)), obj_blockbullet, false, true)
if (col != noone)
    event_user(4)
col2 = collision_rectangle((x - 5), (y - 5), (x + 5), (y + 5), obj_blockbullet, 0, 1)
if (col2 != noone)
    event_user(5)
