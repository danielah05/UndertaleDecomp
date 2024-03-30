if (con == 1)
{
    cr[0] = instance_create(((obj_vsflowey_heart.x - rr) + random((rr * 2))), ((obj_vsflowey_heart.y - rr) + random((rr * 2))), obj_6gun_crosshair)
    if (type == 1)
    {
        with (cr[0])
            sprite_index = spr_6gun_crosshair_heart
    }
    con = 2
    alarm[4] = 6
}
if (con == 3)
{
    cr[1] = instance_create(((obj_vsflowey_heart.x - rr) + random((rr * 2))), ((obj_vsflowey_heart.y - rr) + random((rr * 2))), obj_6gun_crosshair)
    if (type == 1)
    {
        with (cr[1])
            sprite_index = spr_6gun_crosshair_heart
    }
    con = 4
    alarm[4] = 6
}
if (con == 5)
{
    cr[2] = instance_create(((obj_vsflowey_heart.x - rr) + random((rr * 2))), ((obj_vsflowey_heart.y - rr) + random((rr * 2))), obj_6gun_crosshair)
    if (type == 1)
    {
        with (cr[2])
            sprite_index = spr_6gun_crosshair_heart
    }
    if obj_time.down
        cr[2].y += 100
    if obj_time.up
        cr[2].y -= 100
    if obj_time.right
        cr[2].x += 100
    if obj_time.left
        cr[2].x -= 100
    con = 6
    no = 0
    alarm[4] = 3
}
if (con == 7)
{
    dgoal = point_direction(x, y, cr[no].x, cr[no].y)
    curdir = image_angle
    idealdir = dgoal
    facingMinusTarget = (curdir - idealdir)
    angleDiff = facingMinusTarget
    if (abs(facingMinusTarget) > 180)
    {
        if (curdir > idealdir)
            angleDiff = (-1 * ((360 - curdir) + idealdir))
        else
            angleDiff = ((360 - idealdir) + curdir)
    }
    leastAccurateAim = 5
    if (abs(angleDiff) > leastAccurateAim)
    {
        dirspeed = 1
        angleDiff2 = abs(angleDiff)
        if (angleDiff2 > 10)
            dirspeed = 5
        if (angleDiff2 > 20)
            dirspeed = 8
        if (angleDiff2 > 30)
            dirspeed = 12
        if (angleDiff2 > 40)
            dirspeed = 15
        if (angleDiff2 > 50)
            dirspeed = 18
        if (angleDiff2 > 60)
            dirspeed = 24
        if (angleDiff2 > 70)
            dirspeed = 30
        if (angleDiff2 > 80)
            dirspeed = 36
        if (angleDiff2 > 90)
            dirspeed = 42
        if (angleDiff2 > 100)
            dirspeed = 50
        if (angleDiff < 0)
            dirspeed = (-dirspeed)
        image_angle -= dirspeed
    }
    else
    {
        con = 8
        image_angle = dgoal
        alarm[4] = 1
    }
}
if (con == 9)
{
    if (num != 23)
    {
        bl = instance_create(x, y, obj_6gun_bullet)
        bl.direction = dgoal
        bl.image_angle = dgoal
        bl.speed = 30
        if (type == 1)
        {
            with (bl)
                event_user(4)
        }
    }
    else
    {
        bl = instance_create(x, y, obj_6gun_act)
        bl.direction = dgoal
        bl.image_angle = dgoal
        bl.speed = 20
    }
    num += 1
    with (cr[no])
        instance_destroy()
    if (no < 2)
    {
        no += 1
        con = 6
        alarm[4] = 3
    }
    else
        con = 1
}
if (shakeboy == 1)
{
    shake += 0.2
    x += (random(shake) - random(shake))
    y += (random(shake) - random(shake))
}
