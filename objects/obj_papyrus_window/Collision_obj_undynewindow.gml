if (col == 0)
{
    snd_play(snd_glassbreak)
    oo = obj_undynewindow
    j = instance_create(oo.x, oo.y, obj_undynewindow_foreground)
    oo.image_index = 1
    repeat (10)
        instance_create((oo.x + 11), (oo.y + 30), obj_glassshard)
    col = 1
}
