obj_screen.messed = 0
global.inbattle = true
savetimer = 0
loadtimer = 0
darkmode = 0
darkvalue = 0
htest = 0
save_hp = 50
save_inv = 0
megadamage = 0
global.faceemotion = 0
introcon = 1
introskip = 0
turnturn = 0
drawhp = 0
intent_hit = 0
global.floweyhp = 9950
global.floweymaxhp = 9999
global.battlephase = 0
global.soul_rescue = 0
if (global.fplot == 0)
{
    ossafe_ini_open("undertale.ini")
    ini_write_real("FFFFF", "P", 1)
    ossafe_ini_close()
    ossafe_savedata_save()
}
if (global.fplot > 1)
{
    global.battlephase = (global.fplot - 1)
    global.soul_rescue = (global.fplot - 1)
    introskip = 1
    fadevalue = 0
    with (obj_floweyx_tv)
        tvmode = 26
}
flx = 0
fly = 0
tv = instance_create(235, -32, obj_floweyx_tv)
lefteye = instance_create(196, 132, obj_floweyx_lefteye)
flipeye = instance_create(258, 192, obj_floweyx_flipeye)
mouth = instance_create(292, 196, obj_floweyx_mouth)
fleshface = instance_create(260, 126, obj_fleshface)
pipetest = instance_create(272, 226, obj_floweypipetest)
pipetest2 = instance_create(230, 132, obj_floweypipetest_2)
pipetest3 = instance_create(246, 54, obj_floweypipetest_3)
behind = instance_create(140, 10, obj_floweyx_behind)
obj_floweybodyparent.visible = false
sprite_replace(spr_nostrils, "external/spr_nostrils.png", 2, true, false, 0, 0)
sprite_replace(spr_floweyx_fleshmound, "external/spr_fleshmound.png", 1, true, false, 0, 0)
sprite_replace(spr_lefteye_overlay, "external/spr_lefteye_overlay.png", 1, true, false, 40, 24)
sprite_replace(spr_lefteye_nopupil, "external/spr_lefteye_nopupil.png", 1, true, false, 31, 17)
sprite_replace(spr_lefteye_pupil, "external/spr_lefteye_pupil.png", 1, true, false, 8, 8)
sprite_replace(spr_flipeye_bg, "external/spr_flipeye_bg.png", 1, true, false, 20, 50)
sprite_replace(spr_flipeye_holder, "external/spr_flipeye_holder.png", 1, true, false, 31, 53)
sprite_replace(spr_flipeye_noiris, "external/spr_flipeye_noiris.png", 1, true, false, 21, 40)
sprite_replace(spr_flipeye_pupil, "external/spr_flipeye_pupil.png", 1, true, false, 5, 4)
sprite_replace(spr_flipeye_iris, "external/spr_flipeye_iris.png", 1, true, false, 17, 15)
sprite_replace(spr_nostrils, "external/spr_nostrils.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_fleshmound, "external/spr_fleshmound.gif", 0, true, false, 0, 0)
sprite_replace(spr_lefteye_overlay, "external/spr_lefteye_overlay.gif", 0, true, false, 40, 24)
sprite_replace(spr_lefteye_nopupil, "external/spr_lefteye_nopupil.gif", 0, true, false, 31, 17)
sprite_replace(spr_lefteye_pupil, "external/spr_lefteye_pupil.gif", 0, true, false, 8, 8)
sprite_replace(spr_flipeye_bg, "external/spr_flipeye_bg.gif", 0, true, false, 20, 50)
sprite_replace(spr_flipeye_holder, "external/spr_flipeye_holder.gif", 0, true, false, 31, 53)
sprite_replace(spr_flipeye_noiris, "external/spr_flipeye_noiris.gif", 0, true, false, 21, 40)
sprite_replace(spr_flipeye_pupil, "external/spr_flipeye_pupil.gif", 0, true, false, 5, 4)
sprite_replace(spr_flipeye_iris, "external/spr_flipeye_iris.gif", 0, true, false, 17, 15)
sprite_replace(spr_floweyx_mouthedge, "external/spr_floweyx_mouthedge.png", 1, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthl, "external/spr_floweyx_mouthl.png", 1, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthl, "external/spr_floweyx_dimple.png", 3, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthbridge, "external/spr_floweyx_mouthbridge.png", 1, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthedge, "external/spr_floweyx_mouthedge.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthl, "external/spr_floweyx_mouthl.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthl, "external/spr_floweyx_dimple.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_mouthbridge, "external/spr_floweyx_mouthbridge.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_tv, "external/spr_floweyx_tv.png", 1, true, false, 0, 0)
sprite_replace(spr_pipepart, "external/spr_pipepart.png", 1, true, false, 21, 19)
sprite_replace(spr_floweyx_tv, "external/spr_floweyx_tv.gif", 0, true, false, 0, 0)
sprite_replace(spr_pipepart, "external/spr_pipepart.gif", 0, true, false, 21, 19)
sprite_replace(spr_halfdentata_none, "external/spr_halfdentata_none.png", 1, true, false, 51, 36)
sprite_replace(spr_halfdentata_bottom, "external/spr_halfdentata_bottom.png", 1, true, false, 51, 36)
sprite_replace(spr_halfdentata_top, "external/spr_halfdentata_top.png", 1, true, false, 51, 36)
sprite_replace(spr_dentata_tophalf, "external/spr_dentata_tophalf.png", 1, true, false, 51, 36)
sprite_replace(spr_dentata_bottomhalf, "external/spr_dentata_bottomhalf.png", 1, true, false, 51, 36)
sprite_replace(spr_dentata_none, "external/spr_dentata_none.png", 1, true, false, 51, 36)
sprite_replace(spr_bgpipe, "external/spr_bgpipe.png", 1, true, false, 0, 0)
sprite_replace(spr_bgpipe, "external/spr_bgpipe.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyarm, "external/spr_floweyarm.png", 1, true, false, 0, 0)
sprite_replace(spr_floweyarm, "external/spr_floweyarm.gif", 0, true, false, 0, 0)
sprite_replace(spr_sidestalk, "external/spr_sidestalk.png", 1, true, false, 0, 0)
sprite_replace(spr_sidestalk, "external/spr_sidestalk.gif", 0, true, false, 0, 0)
sprite_replace(spr_vines_flowey, "external/spr_vines_flowey.png", 1, true, false, 0, 0)
sprite_replace(spr_vines_flowey_2, "external/spr_vines_flowey_2.png", 1, true, false, 0, 0)
sprite_replace(spr_vines_flowey_3, "external/spr_vines_flowey_3.png", 1, true, false, 0, 0)
sprite_replace(spr_vines_flowey, "external/spr_vines_flowey.gif", 0, true, false, 0, 0)
sprite_replace(spr_vines_flowey_2, "external/spr_vines_flowey_2.gif", 0, true, false, 0, 0)
sprite_replace(spr_vines_flowey_3, "external/spr_vines_flowey_3.gif", 0, true, false, 0, 0)
sprite_replace(spr_tvinside, "external/tv.gif", 0, false, false, 0, 0)
sprite_replace(spr_mouthball, "external/spr_mouthball.png", 0, true, false, 59, 59)
sprite_replace(spr_mouthball, "external/spr_mouthball.gif", 0, true, false, 59, 59)
sprite_replace(spr_floweynuke_explosion, "external/spr_floweynuke_explosion.png", 0, true, false, 0, 0)
sprite_replace(spr_floweynuke_explosion, "external/spr_floweynuke_explosion.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweynuke, "external/spr_floweynuke.png", 0, true, false, 0, 0)
sprite_replace(spr_floweynuke, "external/spr_floweynuke.gif", 0, true, false, 0, 0)
sprite_replace(spr_mouthflash, "external/spr_mouthflash.png", 0, true, false, 0, 0)
sprite_replace(spr_mouthflash, "external/spr_mouthflash.gif", 0, true, false, 0, 0)
sprite_replace(spr_mouthbeam, "external/spr_mouthbeam.png", 0, true, false, 0, 0)
sprite_replace(spr_mouthbeam, "external/spr_mouthbeam.gif", 0, true, false, 0, 0)
sprite_replace(spr_floweyx_flame, "external/spr_floweyx_flame.png", 0, true, false, 20, 24)
sprite_replace(spr_floweyx_flame, "external/spr_floweyx_flame.gif", 0, true, false, 20, 24)
sprite_replace(spr_venus_placeholder, "external/spr_venus_placeholder.png", 0, true, false, 80, 0)
sprite_replace(spr_venus_placeholder, "external/spr_venus_placeholder.gif", 0, true, false, 80, 0)
sprite_collision_mask(spr_floweynuke, false, 2, 13, 44, 34, 100, 1, 0)
mus_soul[0] = caster_load("music/f_6s_1.ogg")
mus_soul[1] = caster_load("music/f_6s_2.ogg")
mus_soul[2] = caster_load("music/f_6s_3.ogg")
mus_soul[3] = caster_load("music/f_6s_4.ogg")
mus_soul[4] = caster_load("music/f_6s_5.ogg")
mus_soul[5] = caster_load("music/f_6s_6.ogg")
mus_soul[6] = caster_load("music/f_6s_1.ogg")
soulpitch = 1
mus_noise = caster_load("music/f_noise.ogg")
mus_alarm = caster_load("music/f_alarm.ogg")
mus_phase[0] = caster_load("music/f_part1.ogg")
mus_phase[1] = caster_load("music/f_part2.ogg")
mus_repeat1 = caster_load("music/repeat_1.ogg")
mus_repeat2 = caster_load("music/repeat_2.ogg")
mus_endnote = caster_load("music/f_endnote.ogg")
mustype = 0
sfx_oh = caster_load("music/sfx_oh.ogg")
sfx_ted = caster_load("music/sfx_ted.ogg")
sfx_generate = caster_load("music/sfx_generate.ogg")
sfx_laugh = caster_load("music/f_laugh.ogg")
mus_finale1 = caster_load("music/f_finale_1.ogg")
mus_finale1_l = caster_load("music/f_finale_1_l.ogg")
mus_finale2 = caster_load("music/f_finale_2.ogg")
mus_finale3 = caster_load("music/f_finale_3.ogg")
mus_saved = caster_load("music/f_saved.ogg")
mus_hit = caster_load("music/f_orchhit.ogg")
pd = 0
doomtimer = 0
o_kill = 0
destroyer = 0
destroyercon = 0
dcon = 0
fileset = 2
if (global.language == "ja")
    writerx = 135
else
    writerx = 170
