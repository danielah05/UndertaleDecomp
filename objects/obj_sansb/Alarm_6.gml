sm = obj_backgrounder_parent
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = "del"
global.msg[1] = "%%%"
yoff = 0
if (hit_try > hit_reached)
{
    if (hit_try == 1)
    {
        global.faceemotion = 3
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_252")
    }
    if (hit_try == 2)
    {
        global.msg[0] = scr_gettext("obj_sansb_256")
        global.msg[1] = scr_gettext("obj_sansb_257")
    }
    if (hit_try == 3)
        global.msg[0] = scr_gettext("obj_sansb_262")
    if (hit_try == 4)
    {
        global.msg[0] = scr_gettext("obj_sansb_266")
        global.msg[1] = scr_gettext("obj_sansb_267")
    }
    if (hit_try == 5)
        global.msg[0] = scr_gettext("obj_sansb_272")
    if (hit_try == 6)
    {
        global.msg[0] = scr_gettext("obj_sansb_277")
        global.msg[1] = scr_gettext("obj_sansb_278")
    }
    if (hit_try == 7)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_284")
    }
    if (hit_try == 8)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_290")
    }
    if (hit_try == 9)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_296")
        global.msg[1] = scr_gettext("obj_sansb_297")
    }
    if (hit_try == 10)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_303")
        global.msg[1] = scr_gettext("obj_sansb_304")
    }
    if (hit_try == 11)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_310")
        global.msg[1] = scr_gettext("obj_sansb_311")
    }
    if (hit_try == 12)
    {
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_317")
        global.msg[1] = scr_gettext("obj_sansb_318")
    }
    if (hit_try == 13)
    {
        FL_AnimationIndex = 0
        with (mypart1)
            sweat = 2
        caster_pause(global.batmusic)
        drama = 1
        obj_heart.speed = 0
        ossafe_ini_open("undertale.ini")
        SS = ini_read_real("Sans", "SS", 0)
        MP = ini_read_real("Sans", "MP", 0)
        ini_write_real("Sans", "MP", (MP + 1))
        ossafe_ini_close()
        global.msg[0] = scr_gettext("obj_sansb_334")
        global.msg[1] = scr_gettext("obj_sansb_335")
        global.msg[2] = scr_gettext("obj_sansb_336")
        global.msg[3] = scr_gettext("obj_sansb_337")
        global.msg[4] = scr_gettext("obj_sansb_338")
        global.msg[5] = scr_gettext("obj_sansb_339")
        global.msg[6] = scr_gettext("obj_sansb_340")
        global.msg[7] = scr_gettext("obj_sansb_341")
        global.msg[8] = scr_gettext("obj_sansb_342")
        global.msg[9] = scr_gettext("obj_sansb_343")
        global.msg[10] = scr_gettext("obj_sansb_344")
        global.msg[11] = scr_gettext("obj_sansb_345")
        global.msg[12] = scr_gettext("obj_sansb_346")
        global.msg[13] = scr_gettext("obj_sansb_347")
        global.msg[14] = scr_gettext("obj_sansb_348")
        global.msg[15] = scr_gettext("obj_sansb_349")
        if (SS > 0)
        {
            global.msg[0] = scr_gettext("obj_sansb_353")
            global.msg[1] = scr_gettext("obj_sansb_354")
            global.msg[2] = scr_gettext("obj_sansb_355")
            global.msg[3] = scr_gettext("obj_sansb_356")
            global.msg[4] = scr_gettext("obj_sansb_357")
            global.msg[5] = scr_gettext("obj_sansb_358")
            global.msg[6] = scr_gettext("obj_sansb_359")
        }
        mercymod = 999999
    }
    if (hit_try == 14)
    {
        ossafe_ini_open("undertale.ini")
        SS = ini_read_real("Sans", "SS", 0)
        SS2 = ini_read_real("Sans", "SS2", 0)
        if (SS > 0)
            ini_write_real("Sans", "SS2", (SS2 + 1))
        ossafe_ini_close()
        if (drama == 2)
            caster_free(d_music)
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_sansb_380")
        global.msg[1] = scr_gettext("obj_sansb_381")
        if (SS > 0 && SS2 == 0)
        {
            global.msg[0] = scr_gettext("obj_sansb_384")
            global.msg[1] = scr_gettext("obj_sansb_385")
            global.msg[2] = scr_gettext("obj_sansb_386")
            global.msg[3] = scr_gettext("obj_sansb_387")
            global.msg[4] = scr_gettext("obj_sansb_388")
            global.msg[5] = scr_gettext("obj_sansb_389")
            global.msg[6] = scr_gettext("obj_sansb_390")
        }
        mercymod = 999999
    }
    if (hit_try == 15)
    {
        global.msg[0] = scr_gettext("obj_sansb_398")
        global.msg[1] = scr_gettext("obj_sansb_399")
        global.msg[2] = scr_gettext("obj_sansb_400")
    }
    if (hit_try == 16)
    {
        global.msg[0] = scr_gettext("obj_sansb_405")
        global.msg[1] = scr_gettext("obj_sansb_406")
    }
    if (hit_try == 17)
    {
        global.msg[0] = scr_gettext("obj_sansb_411")
        global.msg[1] = scr_gettext("obj_sansb_412")
    }
    if (hit_try == 18)
    {
        global.msg[0] = scr_gettext("obj_sansb_417")
        global.msg[1] = scr_gettext("obj_sansb_418")
        global.msg[2] = scr_gettext("obj_sansb_419")
        global.msg[3] = scr_gettext("obj_sansb_420")
        global.msg[4] = scr_gettext("obj_sansb_421")
        global.msg[5] = scr_gettext("obj_sansb_422")
        global.msg[6] = scr_gettext("obj_sansb_423")
    }
    if (hit_try == 19)
        global.msg[0] = scr_gettext("obj_sansb_427")
    if (hit_try == 20)
    {
        with (mypart1)
            sweat = 1
        global.msg[0] = scr_gettext("obj_sansb_433")
        global.msg[1] = scr_gettext("obj_sansb_434")
    }
    if (hit_try == 21)
    {
        with (mypart1)
            sweat = 1
        global.msg[0] = scr_gettext("obj_sansb_441")
        global.msg[1] = scr_gettext("obj_sansb_442")
    }
    if (hit_try == 22)
    {
        with (mypart1)
            sweat = 2
        global.msg[0] = scr_gettext("obj_sansb_448")
        global.msg[1] = scr_gettext("obj_sansb_449")
        global.msg[2] = scr_gettext("obj_sansb_450")
    }
    if (hit_try == 23)
    {
        with (mypart1)
            sweat = 0
        global.msg[0] = scr_gettext("obj_sansb_456")
        global.msg[1] = scr_gettext("obj_sansb_457")
        global.msg[2] = scr_gettext("obj_sansb_458")
    }
    hit_reached = hit_try
}
if (mercy_death == 1)
{
    FL_GetDunkedOn = 1
    caster_free(all)
    FL_AnimationIndex = 0
    global.faceemotion = 4
    global.msg[0] = scr_gettext("obj_sansb_477")
    global.msg[1] = scr_gettext("obj_sansb_478")
    global.msg[2] = scr_gettext("obj_sansb_479")
    global.msg[3] = scr_gettext("obj_sansb_480")
    global.msg[4] = scr_gettext("obj_sansb_481")
    global.msg[5] = scr_gettext("obj_sansb_482")
    global.msg[6] = scr_gettext("obj_sansb_483")
    global.msg[7] = scr_gettext("obj_sansb_484")
    global.msg[8] = scr_gettext("obj_sansb_485")
    global.msg[9] = scr_gettext("obj_sansb_486")
    ossafe_ini_open("undertale.ini")
    SS = ini_read_real("Sans", "SS", 0)
    ini_write_real("Sans", "SS", (SS + 1))
    ossafe_ini_close()
}
global.typer = 109
global.border = 35
a_choose = 0
if (hit_try < 13)
{
    FL_FightingSans = 1
    a_choose = part
    if (part >= 13)
        a_choose = 10
    if (a_choose == 0)
        global.border = 35
    if (a_choose == 1)
        global.border = 35
    if (a_choose == 2)
        global.border = 35
    if (a_choose == 3)
        global.border = 35
    if (a_choose == 4)
        global.border = 35
    if (a_choose == 5)
        global.border = 35
    if (a_choose == 6)
        global.border = 39
    if (a_choose == 7)
        global.border = 35
    if (a_choose == 8)
        global.border = 39
    if (a_choose == 9)
        global.border = 35
    if (a_choose == 10)
        global.border = 35
    if (a_choose == 11)
        global.border = 35
    if (a_choose == 12)
        global.border = 35
    obj_heart.movement = 2
    obj_heart.sprite_index = spr_heartblue
}
if (hit_try >= 14 && hit_try < 23 && nx == 1)
{
    obj_heart.movement = 1
    obj_heart.sprite_index = spr_heart
    c_choose = 0
    if (part == 0)
        global.border = 37
    if (part == 1)
        global.border = 0
    if (part == 2)
        global.border = 36
    if (part == 3)
        global.border = 36
    if (part == 4)
        global.border = 37
    if (part == 5)
        global.border = 36
    if (part == 6)
        global.border = 0
    if (part == 7)
        global.border = 36
    if (part >= 8)
        c_choose = choose(3, 1, 2)
    if (c_choose == 3)
        global.border = 37
    if (c_choose == 1 || c_choose == 2)
        global.border = 36
}
if (hit_try == 23)
{
    global.border = 36
    obj_heart.movement = 1
    obj_heart.sprite_index = spr_heart
}
if (mercy_death == 1)
{
    global.border = 38
    SCR_BORDERSETUP()
    obj_heart.speed = 0
}
obj_heart.x = round(((global.idealborder[0] + global.idealborder[1]) / 2))
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
if (obj_heart.movement == 2)
{
    with (obj_heart)
    {
        y = (global.idealborder[3] - 15)
        speed = 0
        jumpstage = 1
    }
}
if (global.border == 39)
    obj_heart.y = (global.idealborder[3] - 70)
if (mercy_death == 1)
{
    obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
    obj_heart.sprite_index = spr_heart
    obj_heart.movement = 1
}
with (obj_menubone)
    terminate = 1
with (obj_menubone_bottom)
    terminate = 1
with (obj_menubone_maker)
    instance_destroy()
SCR_BORDERSETUP()
yoff = (250 - global.idealborder[2])
if (yoff < 0)
    yoff = 0
if (sm == obj_musicobjectparent)
    blcon = instance_create((x + 120), (y - yoff), obj_blconsm)
else
    blcon = instance_create((x + 120), (y - yoff), obj_blconwdflowey)
blconwd = instance_create((blcon.x + 30), (blcon.y + 10), OBJ_NOMSCWRITER)
if (global.msg[0] == "del")
{
    with (blconwd)
        instance_destroy()
    with (blcon)
        instance_destroy()
}
