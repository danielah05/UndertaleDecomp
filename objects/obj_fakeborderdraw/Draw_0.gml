if (draedmode == false)
{
    if (drawngr == 1)
        sprite_delete(gr)
    gr = sprite_create_from_screen_x((obj_lborder.x - 100), obj_uborder.y, ((obj_rborder.x - obj_lborder.x) + 200), ((obj_dborder.y - obj_uborder.y) + 8), false, false, (((obj_rborder.x - obj_lborder.x) / 2) + 140), (((obj_dborder.y - obj_uborder.y) / 2) + 4))
    sprite_index = gr
}
op = obj_purpleheart
draw_set_color(c_black)
if (draedmode == false)
{
    if (con < 6)
        ossafe_fill_rectangle((obj_lborder.x - 200), obj_uborder.y, (obj_rborder.x + 280), (obj_dborder.y + 8))
    if (con < 6)
        ossafe_fill_rectangle(0, global.idealborder[2], 640, (global.idealborder[3] + 5))
}
if (pattern == 1)
{
    if (moved == 0)
    {
        xx = (global.idealborder[0] - 60)
        moved = 1
    }
    yy = obj_uborder.y
    if (con == 0)
    {
        siner = 0
        factor = 20
        if (draedmode == false)
            draw_sprite_ext(sprite_index, image_index, (xx + (sprite_width / 2)), (yy + (sprite_height / 2)), 1, 1, 0, c_white, 1)
    }
    if (xx >= -60 && con == 0)
        xx -= 10
    if (xx <= -60 && con == 0)
        con = 1
    if (con == 2)
    {
        global.border = 23
        alarm[4] = 60
        instance_create((obj_rborder.x + 10), (obj_dborder.y - 122), obj_grosscupcake2)
        con = 3
    }
    if (con == 3)
    {
        siner = 0
        if (draedmode == false)
            draw_sprite_ext(sprite_index, image_index, (xx + (sprite_width / 2)), (yy + (sprite_height / 2)), 1, 1, 0, c_white, 1)
    }
    if (con == 4)
    {
        global.border = 22
        obj_purpleheart.ttype = 3
        con = 5
        gen = instance_create(0, 0, obj_spiderbulletgen)
        if instance_exists(gen)
        {
            gen.dmg = dmg
            if (obj_spiderb.turnamt == 5)
                gen.type = 13
            if (obj_spiderb.turnamt == 10)
            {
                gen.type = 14
                obj_purpleheart.yadd2 = 4
            }
            if (obj_spiderb.turnamt == 16)
            {
                gen.type = 16
                obj_purpleheart.yadd2 = 5
            }
            gen.alarm[0] = 60
        }
        siner = 0
        rotfactor = 5
    }
    if (con == 5)
    {
        if (obj_purpleheart.yadd < 5)
            obj_purpleheart.yadd += 0.01
        siner += 1
        if (draedmode == false)
            draw_sprite_ext(sprite_index, image_index, (xx + (sprite_width / 2)), (yy + (sprite_height / 2)), 1, 1, (sin((siner / 10)) * rotfactor), c_white, 1)
        if (global.turntimer < 80 && rotfactor > 0)
        {
            rotfactor -= 0.1
            if (rotfactor == 0 && obj_spiderb.turnamt == 16)
            {
                global.turntimer = 370
                con = 6
                with (obj_spiderbulletgen)
                    instance_destroy()
            }
        }
    }
    if (con == 6)
    {
        global.border = 21
        obj_heart.x = obj_purpleheart.x
        obj_heart.y = obj_purpleheart.y
        with (obj_purpleheart)
            instance_destroy()
        with (obj_hideouscupcake)
            vspeed = 4
        with (obj_vertspider)
            instance_destroy()
        con = 7
        alarm[4] = 40
    }
    if (con == 7 || con == 8)
    {
        if (obj_heart.y < (obj_uborder.y + 20))
            obj_heart.y = (obj_uborder.y + 20)
    }
    if (con == 8)
    {
        with (obj_hideouscupcake)
            instance_destroy()
        obj_spiderb.con = 50
        instance_destroy()
    }
    if (con == 1)
    {
        xx += 1
        if (xx >= 140 && instance_exists(obj_spiderbulletgen) == true)
        {
            with (obj_spiderbulletgen)
                instance_destroy()
        }
        if (draedmode == false)
            draw_sprite_ext(sprite_index, image_index, (xx + (sprite_width / 2)), ((yy + (sprite_height / 2)) + (sin((siner / 6)) * factor)), 1, 1, 0, c_white, 1)
        siner += 1
        if (xx >= 160)
        {
            xx = 160
            factor -= 2
            if (factor <= 1)
            {
                factor = 0
                con = 2
            }
        }
    }
}
if (pattern == 2)
{
    siner += 1
    if (draedmode == false)
        draw_sprite_ext(sprite_index, image_index, (xx + (sprite_width / 2)), (yy + (sprite_height / 2)), 1, 1, ((sin((siner / 10)) * 5) + rot), c_white, 1)
}
drawngr = 1
if (global.mnfight != 2)
    instance_destroy()
