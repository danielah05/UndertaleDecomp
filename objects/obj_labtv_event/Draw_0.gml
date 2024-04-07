if (myinteract == 1 && global.interact == 0 && con == 0)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_labtv_event_94")
    global.msg[1] = scr_gettext("obj_labtv_event_95")
    global.msg[2] = scr_gettext("obj_labtv_event_96")
    if (talkedto == 1)
        global.msg[0] = scr_gettext("obj_labtv_event_98")
    talkedto = 1
    instance_create(0, 0, obj_dialoguer)
    con = 2
    buffer = 5
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    buffer -= 1
    draw_set_color(c_white)
    ossafe_fill_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 5), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 80))
    draw_set_color(c_black)
    ossafe_fill_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 8), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 77))
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    draw_text((view_xview_get(0) + 50), (view_yview_get(0) + 15), string_hash_to_newline(scr_gettext("labtv_cancel")))
    draw_text((view_xview_get(0) + 160), (view_yview_get(0) + 15), string_hash_to_newline(scr_gettext("labtv_tape1")))
    draw_text((view_xview_get(0) + 50), (view_yview_get(0) + 35), string_hash_to_newline(scr_gettext("labtv_tape2")))
    draw_text((view_xview_get(0) + 160), (view_yview_get(0) + 35), string_hash_to_newline(scr_gettext("labtv_tape3")))
    draw_text((view_xview_get(0) + 50), (view_yview_get(0) + 55), string_hash_to_newline(scr_gettext("labtv_tape4")))
    draw_text((view_xview_get(0) + 160), (view_yview_get(0) + 55), string_hash_to_newline(scr_gettext("labtv_tape5")))
    draw_sprite(spr_heartsmall, 0, ((view_xview_get(0) + 30) + (heartx * 110)), ((view_yview_get(0) + 20) + (20 * hearty)))
    if (buffer < 0)
    {
        if keyboard_check_pressed(vk_up)
        {
            if (hearty > 0)
                hearty -= 1
        }
        if keyboard_check_pressed(vk_down)
        {
            if (hearty < 2)
            {
                if (heartx == 0)
                {
                    if (hearty == 1)
                        hearty += 1
                    if (hearty == 0)
                        hearty += 1
                }
                if (heartx == 1)
                {
                    if (hearty == 1)
                        hearty += 1
                    if (hearty == 0)
                        hearty += 1
                }
            }
        }
        if keyboard_check_pressed(vk_right)
        {
            if (heartx == 0)
            {
                if (hearty == 0)
                    heartx += 1
                if (hearty == 1)
                    heartx += 1
                if (hearty == 2)
                    heartx += 1
            }
        }
        if keyboard_check_pressed(vk_left)
        {
            if (heartx == 1)
            {
                if (hearty == 0)
                    heartx -= 1
                if (hearty == 1)
                    heartx -= 1
                if (hearty == 2)
                    heartx -= 1
            }
        }
        if control_check_pressed(InteractButton)
        {
            con = 100
            if (heartx == 0 && hearty == 0)
                con = 100
            if (heartx == 1 && hearty == 0)
            {
                con = 10
                nextcon = 20
            }
            if (heartx == 0 && hearty == 1)
            {
                con = 10
                nextcon = 30
            }
            if (heartx == 1 && hearty == 1)
            {
                con = 10
                nextcon = 40
            }
            if (heartx == 0 && hearty == 2)
            {
                con = 10
                nextcon = 50
            }
            if (heartx == 1 && hearty == 2)
            {
                con = 10
                nextcon = 60
            }
        }
    }
}
if (con == 10)
{
    ivol = caster_get_volume(global.currentsong)
    vol = ivol
    alph = 0
    snd_play(snd_item)
    con = 11
    alarm[4] = 15
}
if (con == 12)
{
    con = 13
    alarm[4] = 40
}
if (con == 13)
{
    if (vol > 0)
        vol -= 0.04
    else
        vol = 0
    caster_set_volume(global.currentsong, vol)
    alph += 0.04
    if (alph > 1)
        alph = 1
}
if (con == 14)
{
    caster_pause(global.currentsong)
    con = nextcon
}
if (con == 20)
{
    hh = caster_load("music/house2.ogg")
    caster_loop(hh, 0.7, 0.8)
    con = 21
}
if (con == 21)
{
    global.msc = 0
    global.typer = 4
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labtv_event_287")
    global.msg[1] = scr_gettext("obj_labtv_event_288")
    global.msg[2] = scr_gettext("obj_labtv_event_289")
    global.msg[3] = scr_gettext("obj_labtv_event_290")
    global.msg[4] = scr_gettext("obj_labtv_event_291")
    global.msg[5] = scr_gettext("obj_labtv_event_292")
    global.msg[6] = scr_gettext("obj_labtv_event_293")
    global.msg[7] = scr_gettext("obj_labtv_event_294")
    global.msg[8] = scr_gettext("obj_labtv_event_295")
    global.msg[9] = scr_gettext("obj_labtv_event_296")
    global.msg[10] = scr_gettext("obj_labtv_event_297")
    global.msg[11] = scr_gettext("obj_labtv_event_298")
    global.msg[12] = scr_gettext("obj_labtv_event_299")
    global.msg[13] = scr_gettext("obj_labtv_event_300")
    global.msg[14] = scr_gettext("obj_labtv_event_301")
    global.msg[15] = scr_gettext("obj_labtv_event_302")
    global.msg[16] = scr_gettext("obj_labtv_event_303")
    global.msg[17] = scr_gettext("obj_labtv_event_304")
    global.msg[18] = scr_gettext("obj_labtv_event_305")
    global.msg[19] = scr_gettext("obj_labtv_event_306")
    global.msg[20] = scr_gettext("obj_labtv_event_307")
    global.msg[21] = scr_gettext("obj_labtv_event_308")
    global.msg[22] = scr_gettext("obj_labtv_event_309")
    global.msg[23] = scr_gettext("obj_labtv_event_310")
    global.msg[24] = scr_gettext("obj_labtv_event_311")
    global.msg[25] = scr_gettext("obj_labtv_event_312")
    global.msg[26] = scr_gettext("obj_labtv_event_313")
    global.msg[27] = scr_gettext("obj_labtv_event_314")
    global.msg[28] = scr_gettext("obj_labtv_event_315")
    instance_create(0, 0, obj_dialoguer)
    hhvol = 0.7
    con = 22
}
if (con == 22 && instance_exists(OBJ_WRITER) == false)
{
    hhvol -= 0.04
    caster_set_volume(hh, hhvol)
    if (hhvol <= 0)
    {
        caster_free(hh)
        con = 90
    }
}
if (con == 30)
{
    hh = caster_load("music/birdnoise.ogg")
    caster_loop(hh, 0.9, 0.8)
    con = 31
}
if (con == 31)
{
    global.msc = 0
    global.typer = 76
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labtv_event_350")
    global.msg[1] = scr_gettext("obj_labtv_event_351")
    global.msg[2] = scr_gettext("obj_labtv_event_352")
    global.msg[3] = scr_gettext("obj_labtv_event_353")
    global.msg[4] = scr_gettext("obj_labtv_event_354")
    global.msg[5] = scr_gettext("obj_labtv_event_355")
    instance_create(0, 0, obj_dialoguer)
    hhvol = 0.7
    con = 32
}
if (con == 32 && instance_exists(OBJ_WRITER) == false)
{
    hhvol -= 0.04
    caster_set_volume(hh, hhvol)
    if (hhvol <= 0)
    {
        caster_free(hh)
        con = 90
    }
}
if (con == 40)
{
    hh = caster_load("music/birdnoise.ogg")
    caster_loop(hh, 0.9, 0.9)
    con = 41
}
if (con == 41)
{
    global.msc = 0
    global.typer = 76
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labtv_event_391")
    global.msg[1] = scr_gettext("obj_labtv_event_392")
    global.msg[2] = scr_gettext("obj_labtv_event_393")
    global.msg[3] = scr_gettext("obj_labtv_event_394")
    global.msg[4] = scr_gettext("obj_labtv_event_395")
    global.msg[5] = scr_gettext("obj_labtv_event_396")
    global.msg[6] = scr_gettext("obj_labtv_event_397")
    global.msg[7] = scr_gettext("obj_labtv_event_398")
    global.msg[8] = scr_gettext("obj_labtv_event_399")
    global.msg[9] = scr_gettext("obj_labtv_event_400")
    global.msg[10] = scr_gettext("obj_labtv_event_401")
    global.msg[11] = scr_gettext("obj_labtv_event_402")
    instance_create(0, 0, obj_dialoguer)
    hhvol = 0.7
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    hhvol -= 0.04
    caster_set_volume(hh, hhvol)
    if (hhvol <= 0)
    {
        caster_free(hh)
        con = 90
    }
}
if (con == 50)
{
    hh = caster_load("music/birdnoise.ogg")
    caster_loop(hh, 0.9, 1)
    con = 51
}
if (con == 51)
{
    global.msc = 0
    global.typer = 76
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labtv_event_435")
    global.msg[1] = scr_gettext("obj_labtv_event_436")
    global.msg[2] = scr_gettext("obj_labtv_event_437")
    global.msg[3] = scr_gettext("obj_labtv_event_438")
    global.msg[4] = scr_gettext("obj_labtv_event_439")
    global.msg[5] = scr_gettext("obj_labtv_event_440")
    global.msg[6] = scr_gettext("obj_labtv_event_441")
    instance_create(0, 0, obj_dialoguer)
    hhvol = 0.7
    con = 52
}
if (con == 52 && instance_exists(OBJ_WRITER) == false)
{
    hhvol -= 0.04
    caster_set_volume(hh, hhvol)
    if (hhvol <= 0)
    {
        caster_free(hh)
        con = 90
    }
}
if (con == 60)
{
    hh = caster_load("music/oogloop.ogg")
    caster_loop(hh, 0.7, 0.6)
    con = 61
}
if (con == 61)
{
    global.msc = 0
    global.typer = 4
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labtv_event_473")
    global.msg[1] = scr_gettext("obj_labtv_event_474")
    global.msg[2] = scr_gettext("obj_labtv_event_475")
    global.msg[3] = scr_gettext("obj_labtv_event_476")
    global.msg[4] = scr_gettext("obj_labtv_event_477")
    global.msg[5] = scr_gettext("obj_labtv_event_478")
    global.msg[6] = scr_gettext("obj_labtv_event_479")
    global.msg[7] = scr_gettext("obj_labtv_event_480")
    global.msg[8] = scr_gettext("obj_labtv_event_481")
    global.msg[9] = scr_gettext("obj_labtv_event_482")
    instance_create(0, 0, obj_dialoguer)
    hhvol = 0.7
    con = 62
}
if (con == 62 && instance_exists(OBJ_WRITER) == false)
{
    hhvol -= 0.04
    caster_set_volume(hh, hhvol)
    if (hhvol <= 0)
    {
        caster_free(hh)
        con = 90
    }
}
if (con == 90)
{
    caster_resume(global.currentsong)
    if (vol < ivol)
        vol += 0.05
    else
        vol = ivol
    caster_set_volume(global.currentsong, vol)
    alph -= 0.05
    if (alph < 0)
    {
        alph = 0
        con = 100
    }
}
if (con == 100)
{
    con = 0
    myinteract = 0
    global.interact = 0
    global.facing = Direction.Down
}
if (alph > 0)
{
    draw_set_color(c_black)
    draw_set_alpha(alph)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
