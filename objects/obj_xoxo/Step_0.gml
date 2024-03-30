if (collision_rectangle((x + 10), (bbox_top - 2), (x + 10), (bbox_bottom - 2), obj_mainchara, 0, 1) && touched == false)
{
    touched = true
    if (image_index == 1)
    {
        snd_play(snd_instanoise)
        image_index = 2
        obj_xoxocontroller1.fvic = 0
    }
    if (image_index == 0)
    {
        image_index = 1
        snd_play(snd_instanoise)
    }
}
if (collision_rectangle((x + 10), (bbox_top - 2), (x + 10), (bbox_bottom - 2), obj_mainchara, 0, 1) < 0 && touched == true)
    touched = false
if instance_exists(obj_xoxocontroller1)
{
    if (image_index == 1)
        obj_xoxocontroller1.vic += 1
}
