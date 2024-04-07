if (conversation == 1 && instance_exists(obj_dialoguer) == false)
{
    global.interact = 1
    image_index = 0
    image_speed = 0.1
    sprite_index = spr_icecreamguy_anim
    conversation = 2
}
if (conversation == 2)
{
    global.interact = 1
    j += 1
}
if (conversation == 2 && j > 30)
{
    global.interact = 1
    sprite_index = spr_icecreamguy_happy
    image_speed = 0
    global.msc = 0
    global.typer = 5
    myinteract = 3
    global.msg[0] = scr_gettext("obj_nicecreamguy_288")
    if (room == room_water_nicecream)
    {
        global.msg[0] = scr_gettext("obj_nicecreamguy_291")
        global.msg[1] = scr_gettext("obj_nicecreamguy_292")
        global.msg[2] = scr_gettext("obj_nicecreamguy_293")
        global.msg[3] = scr_gettext("obj_nicecreamguy_294")
        global.msg[4] = scr_gettext("obj_nicecreamguy_295")
        global.msg[5] = scr_gettext("obj_nicecreamguy_296")
    }
    if (room == room_fire_hotelfront_1)
    {
        sprite_index = spr_icecreamguy_sad
        global.msg[0] = scr_gettext("obj_nicecreamguy_302")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 3
}
if (conversation == 3 && instance_exists(OBJ_WRITER) == false)
{
    instance_create(0, 0, obj_golddisplay)
    global.interact = 1
    myinteract = 3
    global.msc = 230
    if (room == room_water_nicecream)
        global.msc = 232
    if (room == room_fire_hotelfront_1)
        global.msc = 273
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_nicecreamguy_320")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 4
    FL_NicecreamDonationTotal = 1
    if (room == room_water_nicecream)
        FL_NiceCreamBusiness = 8
    if (room == room_fire_hotelfront_1)
        FL_NiceCreamBusiness2 = 1
}
if (myinteract == 3 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.halt == 0)
        image_speed = 0.2
    else
        image_speed = 0
}
if (myinteract == 0 || instance_exists(OBJ_WRITER) == false)
{
    image_speed = 0
    image_index = 0
}
