timer += 1
if (timer == 60)
{
    caster_play(dooropen, 0.6, 1)
    image_index = 1
    tor = instance_create(34, 86, obj_npc_marker)
    tor.sprite_index = spr_toriel_r_holdthing
    tor.image_speed = 0
    tor.visible = true
    tor.depth = 1000
    bl = merge_color(c_gray, c_navy, 0.5)
    bl2 = merge_color(bl, c_white, 0.4)
    tor.image_blend = bl2
    pie = instance_create((tor.x + 18), (tor.y + 24), obj_npc_marker)
    pie.sprite_index = spr_pieslice
    pie.image_blend = bl2
    pie.visible = true
    pie.depth = 999
}
if (timer == 150)
{
    tor.image_speed = 0.1
    tor.hspeed = 1
    pie.hspeed = 1
}
if (timer == 240)
{
    tor.image_index = 0
    tor.image_speed = 0
    tor.hspeed = 0
    pie.hspeed = 0
}
if (timer == 290)
{
    tor.sprite_index = spr_toriel_r_placething
    pie.x = (tor.x + 28)
    pie.y = (tor.y + 40)
}
if (timer == 330)
    tor.sprite_index = spr_toriel_r
if (timer == 390)
{
    tor.hspeed = -1
    tor.image_speed = 0.1
}
if (timer == 410)
{
    tor.hspeed = 0
    tor.image_speed = 0
    tor.image_index = 0
}
if (timer == 460)
{
    tor.hspeed = -1
    tor.image_speed = 0.1
    tor.sprite_index = spr_toriel_l
}
if (timer == 530)
{
    tor.hspeed = 0
    tor.image_speed = 0
    tor.image_index = 0
}
if (timer == 560)
    tor.sprite_index = spr_toriel_r
if (timer == 640 && death == 0)
{
    caster_play(doorclose, 0.8, 1)
    caster_stop(crickets)
    depth = -9000
}
if (timer == 760 && death == 0)
    room_goto(room_end_theend)
if (timer == 640 && death == 1)
{
    tor.visible = false
    caster_play(doorclose, 0.8, 1)
    caster_stop(crickets)
    image_index = 0
}
if (timer == 760 && death == 1)
{
    charaface = scr_marker(228, 101, spr_charahead)
    eyeflash = scr_marker(234, 109, spr_asgore_eyeflash_serious)
    eyeflash.depth = -2
    eyeflash.image_speed = 0.25
    caster_play(mus_sfx_eyeflash, 1, 0.5)
}
if (death == 1 && timer >= 760)
{
    if instance_exists(eyeflash)
    {
        if (eyeflash.image_index >= 5)
        {
            with (eyeflash)
                instance_destroy()
        }
    }
}
if (death == 1 && timer == 850)
{
    depth = -9999
    caster_play(mus_f_laugh, 1, 0.75)
}
if (death == 1 && timer == 1150)
{
    caster_free(all)
    room_goto(room_end_theend)
}
