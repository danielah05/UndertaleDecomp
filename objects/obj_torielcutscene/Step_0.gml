if (x < ((room_width / 2) - (sprite_width / 2)))
{
    if (conversation == 0)
    {
        global.currentsong = caster_load("music/toriel.ogg")
        caster_loop(global.currentsong, 0.7, 0.86)
        conversation = 1
        hspeed = 0
        blcon = instance_create(((x + sprite_width) - 10), (y + 2), obj_blconwdflowey)
        global.msc = 674
        conversation = 1
        image_speed = 0.2
        blconwriter = instance_create((obj_blconwdflowey.x + 40), (obj_blconwdflowey.y + 10), OBJ_WRITER)
    }
}
alarm[0] = 20
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt == 0)
        image_speed = 0.2
    else
    {
        image_speed = 0
        image_index = 0
    }
}
if (instance_exists(OBJ_WRITER) && conversation == 1)
    scr_textskip()
if (instance_exists(OBJ_WRITER) == false)
{
    if (conversation == 1)
    {
        with (blcon)
            instance_destroy()
        instance_create(0, 0, obj_unfader)
        alarm[2] = 20
        conversation = 2
        image_speed = 0
        image_index = 0
        volume = 1
    }
}
if (global.faceemotion == 1)
    sprite_index = spr_torielside1
if (global.faceemotion == 2)
    sprite_index = spr_torielcutscene
