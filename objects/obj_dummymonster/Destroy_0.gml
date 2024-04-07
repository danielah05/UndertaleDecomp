if (killed == 1)
{
    FL_DummyStatus = 1
    FL_KilledLast = true
    global.vaporspeed = 0
    global.monstersprite = sprite_index
    ddd = instance_create(x, y, obj_vaporized_new)
    with (ddd)
        scr_newvapordata(23)
    ddd.sprite_index = sprite_index
    ddd.ht = ht
    ddd.wd = wd
    ddd.image_speed = 0
    ddd.image_index = 1
    global.monster[myself] = false
}
