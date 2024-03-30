life -= 1
if (life < 1000 && shake < 0)
    shake = 1
if (life < 500 && shake < 2)
    shake = 2
if (movetype == 0)
{
    if (moving == false)
    {
        newx = ((xstart + random(60)) - random(60))
        newy = ((ystart + random(20)) - random(20))
        distspeed = (distance_to_point(newy, newx) / 20)
        move_towards_point(newx, newy, distspeed)
        alarm[3] = 8
        moving = true
        image_speed = 0.5
    }
    if (moving == 2)
    {
        image_speed = 0
        image_index = 0
        chch = choose(0, 1)
        thisx = (obj_heart.x + 10)
        thisy = (obj_heart.y + 10)
        ltimer = 100
        speed = 0
        moving = 3
        alarm[3] = 30
    }
    if (moving == 4)
        moving = false
    if (shake > 0)
    {
        x += (random(shake) - random(shake))
        y += (random(shake) - random(shake))
        shake -= 1
    }
}
lightning_timer += 1
if (ltimer >= 100)
{
    ltimer += 1
    if (ltimer == 100 || ltimer == 102 || ltimer == 104 || ltimer == 106)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.friction = -0.1
        lt.speed = 8
        lt.direction = point_direction(x, y, thisx, thisy)
    }
    if (ltimer == 108 || ltimer == 110 || ltimer == 112 || ltimer == 114)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.friction = -0.1
        lt.speed = 8
        if (chch == 1)
            lt.direction = (point_direction(x, y, thisx, thisy) - 10)
        else
            lt.direction = (point_direction(x, y, thisx, thisy) + 10)
    }
    if (ltimer == 116 || ltimer == 118 || ltimer == 120 || ltimer == 122)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.friction = -0.1
        lt.speed = 8
        if (chch == 1)
            lt.direction = (point_direction(x, y, thisx, thisy) + 10)
        else
            lt.direction = (point_direction(x, y, thisx, thisy) - 10)
    }
    if (ltimer == 125)
        ltimer = 0
}
if (size > 1)
{
    image_xscale = size
    image_yscale = size
    size -= 0.5
    if (size == 1)
        image_index = 0
}
if (lastcon == 1 && global.turntimer > 1)
{
    with (obj_ratingsmaster)
        active = false
    movetype = 1
    lightning_timer = 400
    visible = false
    global.faceemotion = 6
    obj_mettb_body.pause = 2
    obj_mettb_body.hurt = 2
    obj_mettb_body.dsf = 2
    obj_mettattackgen.dark = 0
    caster_stop(all)
    obj_heart.shot = 0
    global.turntimer = 900
    mtb = instance_create(x, y, obj_mettheart_burst)
    mtb.homex = xstart
    mtb.homey = ystart
    mtb.another = 1
    lastcon = 2
}
if (lastcon >= 2)
{
    global.faceemotion = 6
    obj_mettb_body.hurt = 2
}
if (lastcon == 3)
{
    with (obj_mettattackgen)
        instance_destroy()
    lastcon = 4
    alarm[4] = 50
}
if (lastcon == 4)
    obj_mettb_body.dsf -= 0.04
if (lastcon == 5)
{
    obj_mettatonex.con = 50
    global.mnfight = -1
    global.myfight = -1
    instance_destroy()
}
