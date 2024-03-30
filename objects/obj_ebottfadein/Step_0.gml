timer += 1
if (timer < 150)
{
    if (image_alpha < 1)
        image_alpha += 0.02
}
if (timer == 150)
{
    sepiaebott = instance_create(x, y, obj_npc_marker)
    sepiaebott.image_xscale = 2
    sepiaebott.image_yscale = 2
    sepiaebott.image_speed = 0
    sepiaebott.image_index = 1
    sepiaebott.sprite_index = sprite_index
    sepiaebott.depth = (depth + 10)
    sepiaebott.visible = true
}
if (timer >= 150 && timer <= 250)
    image_alpha -= 0.01
if (timer >= 300 && timer <= 700)
{
    offer += 1
    if (offer == 4)
    {
        view_yview_set(0, (view_yview_get(0) + 1))
        offer = 0
    }
}
if (timer == 560)
    n_active = 1
n_index += 1
if (n_timer >= 140)
{
    caster_free(all)
    room_goto(room_creditsdodger)
}
caster_set_volume(s8, (1 - n_alpha))
caster_set_volume(noise, n_alpha)
audio_sound_gain(mus_f_noise, 0.9, 1)
if (n_active == 1)
    n_timer += 1
