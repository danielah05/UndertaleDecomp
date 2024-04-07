if (clap < 3)
    obj_mainchara_fake.depth = depp
if (heartdraw == 1 && clap < 3)
    draw_sprite_ext(spr_ourheart, 0, (obj_mainchara_fake.x + 5), (obj_mainchara_fake.y + 17), 0.5, 0.5, 0, c_white, 1)
if (clap != 99)
{
    if (on == 0)
    {
        if (heartdraw == 0)
        {
            snd_play(snd_noise)
            on = 1
            heartdraw = 1
        }
    }
}
on = 0
if (clap == 3)
{
    instance_create((obj_mainchara_fake.x + 5), (obj_mainchara_fake.y + 17), obj_transheart_fake)
    heartdraw = 0
    obj_mainchara_fake.visible = false
    clap = 99
}
if (fader == 1)
{
    with (obj_transheart_fake)
    {
        if (clapper == 1)
            image_alpha -= 0.2
    }
}
