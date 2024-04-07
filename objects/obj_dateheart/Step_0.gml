global.invc -= 1
if (global.invc > 0)
    image_speed = 0.5
else
{
    image_index = 0
    image_speed = 0
}
if obj_time.left
{
    if (movement == 1)
    {
        x -= global.sp
        if (control_check(CancelButton) == 1)
            x += (global.sp / 2)
    }
}
if obj_time.right
{
    if (movement == 1)
    {
        x += global.sp
        if (control_check(CancelButton) == 1)
            x += (global.sp / 2)
    }
}
if obj_time.up
{
    if (movement == 1)
    {
        y -= global.sp
        if (control_check(CancelButton) == 1)
            x += (global.sp / 2)
    }
}
if obj_time.down
{
    if (movement == 1)
    {
        y += global.sp
        if (control_check(CancelButton) == 1)
            x += (global.sp / 2)
    }
}
if (global.hp < 1)
    scr_gameoverb()
if (deleteafter == 1 && instance_exists(blconwd) == false)
{
    alarm[3] = 10
    if instance_exists(blcon)
    {
        with (blcon)
            instance_destroy()
    }
    if instance_exists(blconwd)
    {
        with (blconwd)
            instance_destroy()
    }
    movement = 1
    if instance_exists(obj_papdate)
    {
        obj_papdate.face_index = 0
        obj_papdate.face_speed = 0
    }
    deleteafter = 0
}
if (control_check_pressed(InteractButton) && movement == 1 && canpress == 1)
{
    if instance_exists(obj_papdate)
    {
        snd_play(snd_bell)
        bodypart = 0
        xx = obj_papdate.x
        yy = obj_papdate.y
        if collision_rectangle((xx + 24), (yy + 58), (xx + 86), (yy + 130), obj_dateheart, 0, 0)
            bodypart = 1
        if collision_rectangle((xx + 84), (yy + 56), (xx + 110), (yy + 164), obj_dateheart, 0, 0)
            bodypart = 2
        if collision_rectangle((xx + 0), (yy + 66), (xx + 24), (yy + 112), obj_dateheart, 0, 0)
            bodypart = 2
        if collision_rectangle((xx + 90), (yy + 144), (xx + 138), (yy + 172), obj_dateheart, 0, 0)
            bodypart = 3
        if collision_rectangle((xx + 0), (yy + 112), (xx + 44), (yy + 146), obj_dateheart, 0, 0)
            bodypart = 3
        if collision_rectangle((xx + 34), (yy + 130), (xx + 84), (yy + 196), obj_dateheart, 0, 0)
            bodypart = 4
        if collision_rectangle((xx + 12), (yy + 196), (xx + 124), (yy + 216), obj_dateheart, 0, 0)
            bodypart = 5
        if collision_rectangle((xx + 36), yy, (xx + 88), (yy + 58), obj_dateheart, 0, 0)
            bodypart = 6
        if (bodypart > 0)
        {
            deleteafter = 1
            if (bodypart == 2)
            {
                global.msg[0] = scr_gettext("obj_dateheart_158")
                global.msg[1] = scr_gettext("obj_dateheart_159")
                global.msg[2] = scr_gettext("obj_dateheart_160")
                global.msg[3] = scr_gettext("obj_dateheart_161")
            }
            if (bodypart == 1)
            {
                global.msg[0] = scr_gettext("obj_dateheart_165")
                global.msg[1] = scr_gettext("obj_dateheart_166")
                global.msg[2] = scr_gettext("obj_dateheart_167")
                global.msg[3] = scr_gettext("obj_dateheart_168")
            }
            if (bodypart == 3)
            {
                global.msg[0] = scr_gettext("obj_dateheart_172")
                global.msg[1] = scr_gettext("obj_dateheart_173")
            }
            if (bodypart == 4)
            {
                global.msg[0] = scr_gettext("obj_dateheart_177")
                global.msg[1] = scr_gettext("obj_dateheart_178")
            }
            if (bodypart == 5)
            {
                global.msg[0] = scr_gettext("obj_dateheart_182")
                global.msg[1] = scr_gettext("obj_dateheart_183")
                global.msg[2] = scr_gettext("obj_dateheart_184")
            }
            if (bodypart == 6)
                global.msg[0] = scr_gettext("obj_dateheart_188")
            if (bodypart < 6)
                event_user(1)
            if (bodypart == 6)
            {
                obj_papdate.cn = 47
                instance_destroy()
            }
        }
    }
}
