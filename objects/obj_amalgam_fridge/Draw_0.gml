if (alpha < 1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
if (amalgam == 1)
    draw_sprite_ext(spr_amalgam_fridge, floor(anim), x, y, 1, 1, 0, c_white, alpha)
if (con == 1)
{
    if (obj_mainchara.x < 122 || obj_mainchara.x > 220)
    {
        if (global.interact == 0)
        {
            con = 2
            caster_pause(global.currentsong)
            global.interact = 1
            if (obj_mainchara.x < 160)
                global.facing = Direction.Right
            if (obj_mainchara.x > 200)
                global.facing = Direction.Left
            tr = caster_load("music/sfx_generate.ogg")
            caster_play(tr, 0.8, 1)
        }
    }
}
if (con == 2)
{
    amalgam = 1
    image_index = 0
    image_speed = 0
    con = 3.1
    alarm[4] = 50
}
if (con == 3.1)
{
    global.interact = 1
    if (obj_mainchara.x < 160)
        global.facing = Direction.Right
    if (obj_mainchara.x > 200)
        global.facing = Direction.Left
    if (alpha < 1)
        alpha += 0.1
}
if (con == 4.1)
{
    caster_play(tr, 0.8, 0.7)
    con = 4
}
if (con == 4)
{
    anim += 0.5
    if (anim >= 8)
    {
        anim = 8
        image_speed = 0
        con = 5
        alarm[4] = 50
    }
}
if (con == 6)
{
    caster_free(tr)
    global.battlegroup = 84
    global.mercy = 1
    global.border = 0
    FL_TypeHeartTransition = HeartTransitionType.Normal
    instance_create(0, 0, obj_battler)
    con = 7
    alarm[4] = 32
}
if (con == 8)
{
    global.interact = 0
    global.mercy = 0
    caster_resume(global.currentsong)
    myinteract = 0
    image_blend = c_blue
    sprite_index = spr_leverkey
    myinteract = 0
    FL_SnowyAmalgamEvent = 1
    image_speed = 0.1
    scr_tempsave()
    con = 9
    amalgam = 0
    alpha = 0
    x = 170
    y = 138
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 0
    FL_SnowyAmalgamEvent = 2
    instance_destroy()
}
