if (cn == -1)
{
    global.typer = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_adate_125")
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
    cn = 0
}
if (cn == 0 && instance_exists(OBJ_WRITER) == false)
{
    with (OBJ_WRITER)
        instance_destroy()
    al = obj_adate_body
    xx = obj_adate_body.x
    yy = obj_adate_body.y
    global.faceemotion = 0
    global.facechoice = 0
    global.msc = 0
    global.typer = 74
    global.msg[0] = scr_gettext("obj_adate_142")
    scr_blcon((xx - 250), yy, 1)
    cn = 2
}
if (cn == 2 && instance_exists(OBJ_WRITER) == false)
{
    cn = 3
    alarm[4] = 60
}
if (cn == 4)
{
    al.x -= 8
    if (al.x < 350)
        cn = 5
}
if (cn == 5)
{
    xx = obj_adate_body.x
    yy = obj_adate_body.y
    global.faceemotion = 5
    FL_AnimationIndex = 3
    global.msc = 0
    global.typer = 74
    global.msg[0] = scr_gettext("obj_adate_170")
    global.msg[1] = scr_gettext("obj_adate_171")
    global.msg[2] = scr_gettext("obj_adate_172")
    global.msg[3] = scr_gettext("obj_adate_173")
    scr_blcon((xx - 260), yy, 1)
    cn = 6
}
if (cn == 6 && instance_exists(OBJ_WRITER) == false)
{
    cn = 6.1
    alarm[4] = 55
    global.currentsong = caster_play(datemusic, 1, 1)
    global.typer = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_adate_186")
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
}
if (cn == 7.1)
{
    mfo = instance_create(0, 0, obj_musfadeout)
    with (OBJ_WRITER)
        instance_destroy()
    global.typer = 74
    global.faceemotion = 9
    FL_AnimationIndex = 4
    global.msg[0] = scr_gettext("obj_adate_199")
    global.msg[1] = scr_gettext("obj_adate_200")
    scr_blcon((xx - 260), yy, 1)
    cn = 8
}
if (cn == 8 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_adate_209")
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
    cn = 9
}
if (cn == 9 && instance_exists(OBJ_WRITER) == false)
{
    with (mfo)
        instance_destroy()
    global.typer = 74
    global.currentsong = caster_loop(lab, 1, 1)
    global.faceemotion = 9
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_221")
    global.msg[1] = scr_gettext("obj_adate_222")
    global.msg[2] = scr_gettext("obj_adate_223")
    global.msg[3] = scr_gettext("obj_adate_224")
    global.msg[4] = scr_gettext("obj_adate_225")
    global.msg[5] = scr_gettext("obj_adate_226")
    global.msg[6] = scr_gettext("obj_adate_227")
    global.msg[7] = scr_gettext("obj_adate_228")
    global.msg[8] = scr_gettext("obj_adate_229")
    global.msg[9] = scr_gettext("obj_adate_230")
    global.msg[10] = scr_gettext("obj_adate_231")
    global.msg[11] = scr_gettext("obj_adate_232")
    global.msg[12] = scr_gettext("obj_adate_233")
    global.msg[13] = scr_gettext("obj_adate_234")
    global.msg[14] = scr_gettext("obj_adate_235")
    global.msg[15] = scr_gettext("obj_adate_236")
    global.msg[16] = scr_gettext("obj_adate_237")
    scr_blcon((xx - 260), yy, 1)
    cn = 10
}
if (cn == 10)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 6)
        {
            FL_AnimationIndex = 5
            al.item = 1
            al.aa = 0
        }
        if (OBJ_WRITER.stringno == 8)
        {
            FL_AnimationIndex = 6
            al.item = 0
            al.aa = 0
        }
        if (OBJ_WRITER.stringno == 10)
        {
            FL_AnimationIndex = 5
            al.item = 1
            al.aa = 1
        }
        if (OBJ_WRITER.stringno == 12)
        {
            FL_AnimationIndex = 6
            al.item = 0
            al.aa = 1
        }
        if (OBJ_WRITER.stringno == 13)
        {
            FL_AnimationIndex = 5
            al.item = 1
            al.aa = 2
        }
        if (OBJ_WRITER.stringno == 15)
        {
            FL_AnimationIndex = 6
            al.item = 0
            al.aa = 2
        }
    }
    else
    {
        cn = 11
        mfo = instance_create(0, 0, obj_musfadeout)
        mfo.fadespeed = 0.02
        global.typer = 1
        global.msc = 0
        global.msg[0] = scr_gettext("obj_adate_301")
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
    }
}
if (cn == 11 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 74
    global.faceemotion = 0
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_314")
    scr_blcon((xx - 260), yy, 1)
    cn = 12
}
if (cn == 12 && instance_exists(OBJ_WRITER) == false)
{
    cn = 13
    alarm[4] = 90
}
if (cn == 14)
{
    global.faceemotion = 1
    cn = 15
    alarm[4] = 60
}
if (cn == 16)
{
    global.faceemotion = 2
    cn = 17
    alarm[4] = 60
}
if (cn == 18)
{
    global.faceemotion = 3
    cn = 19
    alarm[4] = 60
}
if (cn == 20 && instance_exists(OBJ_WRITER) == false)
{
    with (mfo)
        instance_destroy()
    global.typer = 74
    global.faceemotion = 3
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_352")
    global.msg[1] = scr_gettext("obj_adate_353")
    scr_blcon((xx - 260), yy, 1)
    cn = 21
}
if (cn == 21 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 1 && OBJ_WRITER.halt != 0)
    {
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_367")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 22
    }
}
if (cn == 22 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 23
    choicer = 0
    alarm[4] = 10
}
if (cn == 24)
{
    global.typer = 74
    if (choice == 0)
    {
        global.faceemotion = 6
        global.msg[0] = scr_gettext("obj_adate_391")
    }
    else
    {
        global.faceemotion = 6
        global.msg[0] = scr_gettext("obj_adate_396")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 25
}
if (cn == 25 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 3
    alarm[4] = 100
    cn = 26
}
if (cn == 27)
{
    global.typer = 74
    global.faceemotion = 6
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_414")
    global.msg[1] = scr_gettext("obj_adate_415")
    global.msg[2] = scr_gettext("obj_adate_416")
    global.msg[3] = scr_gettext("obj_adate_417")
    global.msg[4] = scr_gettext("obj_adate_418")
    scr_blcon((xx - 260), yy, 1)
    cn = 28
}
if (cn == 28 && instance_exists(OBJ_WRITER) == false)
{
    al.hspeed = -8
    snd_play(snd_escaped)
    cn = 28.1
    alarm[4] = 20
}
if (cn == 29.1)
{
    fadeouter = 1
    cn = 29
    alarm[4] = 30
}
if (cn == 30)
{
    instance_create(0, 0, obj_garbagebg)
    global.currentroom = room_water_trashzone1
    watersfx = caster_load("music/ambientwater.ogg")
    global.currentsong = caster_loop(watersfx, 0, 0.9)
    mfi = instance_create(0, 0, obj_musfadein)
    fadeouter = 2
    with (obj_adate_body)
        instance_destroy()
    global.faceemotion = 0
    FL_AnimationIndex = 0
    al = instance_create((room_width + 160), 180, obj_adate_body)
    trashcan = instance_create(500, ((al.y + (al.sprite_height * 2)) - 20), obj_adate_trashcan)
    al.hspeed = -8
    cn = 31
}
if (cn == 31)
{
    if (al.x < 350)
    {
        al.hspeed = 0
        al.x = 350
        cn = 32
        if (skip == true)
            cn = 110
    }
}
if (cn == 32)
{
    xx = al.x
    yy = al.y
    global.msc = 0
    global.typer = 74
    global.faceemotion = 0
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_476")
    global.msg[1] = scr_gettext("obj_adate_477")
    global.msg[2] = scr_gettext("obj_adate_478")
    global.msg[3] = scr_gettext("obj_adate_479")
    global.msg[4] = scr_gettext("obj_adate_480")
    scr_blcon((xx - 260), yy, 1)
    cn = 33
}
if (cn == 33 && instance_exists(OBJ_WRITER) == false)
{
    mfo = instance_create(0, 0, obj_musfadeout)
    mfo.fadespeed = 0.04
    global.faceemotion = 3
    cn = 34
    alarm[4] = 50
}
if (cn == 35)
{
    with (mfo)
        instance_destroy()
    datetense = caster_load("music/date_tense.ogg")
    global.currentsong = caster_loop(datetense, 1, 1)
    global.typer = 74
    global.faceemotion = 3
    FL_AnimationIndex = 2
    global.msg[0] = scr_gettext("obj_adate_503")
    global.msg[1] = scr_gettext("obj_adate_504")
    global.msg[2] = scr_gettext("obj_adate_505")
    global.msg[3] = scr_gettext("obj_adate_506")
    global.msg[4] = scr_gettext("obj_adate_507")
    global.msg[5] = scr_gettext("obj_adate_508")
    scr_blcon((xx - 260), yy, 1)
    cn = 36
    nowy = al.y
}
if (cn == 36 && instance_exists(OBJ_WRITER) == false)
{
    al.x -= 10
    if (al.y > (nowy - 22))
        al.y -= 1
    if (al.x < (trashcan.x - 240))
        cn = 37
}
if (cn == 37)
{
    if (al.y > (nowy - 22))
        al.y -= 1
    al.depth = 2
    al.x += 10
    if (al.x > (trashcan.x - 70))
        cn = 38
}
if (cn == 38)
{
    global.facechoice = 1
    und = instance_create(-100, (trashcan.y + 10), obj_adate_ubody)
    und.y -= ((und.sprite_height * 2) + 66)
    und.hspeed = 16
    cn = 39
}
if (cn == 39)
{
    if (und.x > 80)
    {
        und.x = 80
        und.hspeed = 0
        cn = 40
        alarm[4] = 15
    }
}
if (cn == 41)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_556")
    global.msg[1] = scr_gettext("obj_adate_557")
    global.msg[2] = scr_gettext("obj_adate_558")
    global.msg[3] = scr_gettext("obj_adate_559")
    global.msg[4] = scr_gettext("obj_adate_560")
    global.msg[5] = scr_gettext("obj_adate_561")
    global.msg[6] = scr_gettext("obj_adate_562")
    scr_blcon((xxx + 100), (yyy + 20), 0)
    cn = 42
}
if (cn == 42 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0)
    {
        al.shake = 2
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_576")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 43
    }
}
if (cn == 43 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 44
    choicer = 0
    alarm[4] = 10
}
if (cn == 45)
{
    al.shake = 0
    global.typer = 39
    if (choice == 0)
    {
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_adate_602")
        global.msg[1] = scr_gettext("obj_adate_603")
        global.msg[2] = scr_gettext("obj_adate_604")
    }
    else
    {
        global.facechoice = 1
        global.msg[0] = scr_gettext("obj_adate_609")
        global.msg[1] = scr_gettext("obj_adate_610")
        global.msg[2] = scr_gettext("obj_adate_611")
    }
    scr_blcon((xxx + 100), (yyy + 20), 0)
    cn = 46
}
if (cn == 46 && instance_exists(OBJ_WRITER) == false)
{
    mfo = instance_create(0, 0, obj_musfadeout)
    und.hspeed = 20
    cn = 47
    alarm[4] = 40
}
if (cn == 48)
{
    with (obj_musfadeout)
        instance_destroy()
    cn = 49
    FL_AnimationIndex = 0
    global.faceemotion = 3
}
if (cn == 49)
{
    al.depth = 2
    al.x -= 10
    if (al.x < (trashcan.x - 240))
        cn = 50
}
if (cn == 50 && instance_exists(OBJ_WRITER) == false)
{
    al.depth = 0
    al.x += 10
    if (al.y < nowy)
        al.y += 4
    if (al.x > xx)
    {
        al.y = nowy
        cn = 51
        al.x = xx
    }
}
if (cn == 51)
{
    cn = 52
    lab = caster_load("music/lab.ogg")
    alarm[4] = 20
}
if (cn == 53)
{
    global.currentsong = caster_loop(lab, 1, 0.75)
    global.typer = 74
    global.faceemotion = 3
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_669")
    global.msg[1] = scr_gettext("obj_adate_670")
    global.msg[2] = scr_gettext("obj_adate_671")
    global.msg[3] = scr_gettext("obj_adate_672")
    global.msg[4] = scr_gettext("obj_adate_673")
    global.msg[5] = scr_gettext("obj_adate_674")
    global.msg[6] = scr_gettext("obj_adate_675")
    global.msg[7] = scr_gettext("obj_adate_676")
    global.msg[8] = scr_gettext("obj_adate_677")
    global.msg[9] = scr_gettext("obj_adate_678")
    global.msg[10] = scr_gettext("obj_adate_679")
    global.msg[11] = scr_gettext("obj_adate_680")
    global.msg[12] = scr_gettext("obj_adate_681")
    global.msg[13] = scr_gettext("obj_adate_682")
    global.msg[14] = scr_gettext("obj_adate_683")
    global.msg[15] = scr_gettext("obj_adate_684")
    global.msg[16] = scr_gettext("obj_adate_685")
    global.msg[17] = scr_gettext("obj_adate_686")
    global.msg[18] = scr_gettext("obj_adate_687")
    global.msg[19] = scr_gettext("obj_adate_688")
    global.msg[20] = scr_gettext("obj_adate_689")
    global.msg[21] = scr_gettext("obj_adate_690")
    global.msg[22] = scr_gettext("obj_adate_691")
    global.msg[23] = scr_gettext("obj_adate_692")
    global.msg[24] = scr_gettext("obj_adate_693")
    global.msg[25] = scr_gettext("obj_adate_694")
    scr_blcon((xx - 260), yy, 1)
    cn = 54
}
if (cn == 54 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 25 && OBJ_WRITER.halt != 0)
    {
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_708")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 55
    }
}
if (cn == 55 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 56
    choicer = 0
    alarm[4] = 10
}
if (cn == 57)
{
    global.typer = 74
    if (choice == 0)
    {
        global.faceemotion = 9
        global.msg[0] = scr_gettext("obj_adate_732")
        global.msg[1] = scr_gettext("obj_adate_733")
        global.msg[2] = scr_gettext("obj_adate_734")
        global.msg[3] = scr_gettext("obj_adate_735")
        global.msg[4] = scr_gettext("obj_adate_736")
        global.msg[5] = scr_gettext("obj_adate_737")
        global.msg[6] = scr_gettext("obj_adate_738")
        global.msg[7] = scr_gettext("obj_adate_739")
        global.msg[8] = scr_gettext("obj_adate_740")
        global.msg[9] = scr_gettext("obj_adate_741")
        global.msg[10] = scr_gettext("obj_adate_742")
        global.msg[11] = scr_gettext("obj_adate_743")
        global.msg[12] = scr_gettext("obj_adate_744")
        global.msg[13] = scr_gettext("obj_adate_745")
        global.msg[14] = scr_gettext("obj_adate_746")
        global.msg[15] = scr_gettext("obj_adate_747")
        global.msg[16] = scr_gettext("obj_adate_748")
        global.msg[17] = scr_gettext("obj_adate_749")
    }
    else
    {
        global.faceemotion = 7
        FL_AnimationIndex = 4
        global.msg[0] = scr_gettext("obj_adate_755")
        global.msg[1] = scr_gettext("obj_adate_756")
        global.msg[2] = scr_gettext("obj_adate_757")
        global.msg[3] = scr_gettext("obj_adate_758")
        global.msg[4] = scr_gettext("obj_adate_759")
        global.msg[5] = scr_gettext("obj_adate_760")
        global.msg[6] = scr_gettext("obj_adate_761")
        global.msg[7] = scr_gettext("obj_adate_762")
        global.msg[8] = scr_gettext("obj_adate_763")
        global.msg[9] = scr_gettext("obj_adate_764")
        global.msg[10] = scr_gettext("obj_adate_765")
        global.msg[11] = scr_gettext("obj_adate_766")
        global.msg[12] = scr_gettext("obj_adate_767")
        global.msg[13] = scr_gettext("obj_adate_768")
        global.msg[14] = scr_gettext("obj_adate_769")
        global.msg[15] = scr_gettext("obj_adate_770")
        global.msg[16] = scr_gettext("obj_adate_771")
        global.msg[17] = scr_gettext("obj_adate_772")
        global.msg[18] = scr_gettext("obj_adate_773")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 58
}
if (cn == 58 && instance_exists(OBJ_WRITER) == false)
{
    cn = 59
    alarm[4] = 10
}
if (cn == 60)
{
    choice = 0
    choicer = 1
    global.typer = 1
    global.msg[0] = scr_gettext("obj_adate_794")
    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    with (iii)
        halt = 0
    cn = 61
}
if (cn == 61 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 62
    choicer = 0
    alarm[4] = 10
}
if (cn == 63)
{
    global.msc = 0
    xx = al.x
    yy = al.y
    if (skip == true)
    {
        caster_stop(all)
        global.currentsong = caster_loop(lab, 1, 0.75)
    }
    global.typer = 74
    global.faceemotion = 4
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_827")
    global.msg[1] = scr_gettext("obj_adate_828")
    global.msg[2] = scr_gettext("obj_adate_829")
    global.msg[3] = scr_gettext("obj_adate_830")
    scr_blcon((xx - 260), yy, 1)
    cn = 64
}
if (cn == 64 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 3 && OBJ_WRITER.halt != 0)
    {
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_844")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 65
    }
}
if (cn == 65 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    if (choice == 0)
        cn = 69
    else
        cn = 89
    choicer = 0
    alarm[4] = 10
}
if (cn == 70)
{
    global.typer = 74
    global.faceemotion = 6
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_868")
    global.msg[1] = scr_gettext("obj_adate_869")
    global.msg[2] = scr_gettext("obj_adate_870")
    scr_blcon((xx - 260), yy, 1)
    cn = 71
}
if (cn == 71 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 2 && OBJ_WRITER.halt != 0)
    {
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_884")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 72
    }
}
if (cn == 72 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 73
    choicer = 0
    alarm[4] = 10
}
if (cn == 74)
{
    global.typer = 74
    FL_AnimationIndex = 0
    if (choice == 0)
    {
        global.msg[0] = scr_gettext("obj_adate_907")
        global.msg[1] = scr_gettext("obj_adate_908")
        global.msg[2] = scr_gettext("obj_adate_909")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_adate_913")
        global.msg[1] = scr_gettext("obj_adate_914")
        global.msg[2] = scr_gettext("obj_adate_915")
        global.msg[3] = scr_gettext("obj_adate_916")
        global.msg[4] = scr_gettext("obj_adate_917")
        global.msg[5] = scr_gettext("obj_adate_918")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 74.1
}
if (cn == 74.1 && instance_exists(OBJ_WRITER) == false)
{
    cn = 74.2
    alarm[4] = 20
}
if (cn == 75.2)
    cn = 75
if (cn == 75 && instance_exists(OBJ_WRITER) == false)
{
    choice = 0
    choicer = 1
    global.typer = 1
    global.msg[0] = scr_gettext("obj_adate_941")
    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    with (iii)
        halt = 0
    cn = 76
}
if (cn == 76 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 77
    choicer = 0
    alarm[4] = 10
}
if (cn == 78)
{
    global.typer = 74
    FL_AnimationIndex = 0
    if (choice == 0)
    {
        global.msg[0] = scr_gettext("obj_adate_963")
        global.msg[1] = scr_gettext("obj_adate_964")
        global.msg[2] = scr_gettext("obj_adate_965")
        global.msg[3] = scr_gettext("obj_adate_966")
        global.msg[4] = scr_gettext("obj_adate_967")
        global.msg[5] = scr_gettext("obj_adate_968")
        global.msg[6] = scr_gettext("obj_adate_969")
        global.msg[7] = scr_gettext("obj_adate_970")
        global.msg[8] = scr_gettext("obj_adate_971")
        global.msg[9] = scr_gettext("obj_adate_972")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_adate_976")
        global.msg[1] = scr_gettext("obj_adate_977")
        global.msg[2] = scr_gettext("obj_adate_978")
        global.msg[3] = scr_gettext("obj_adate_979")
        global.msg[4] = scr_gettext("obj_adate_980")
        global.msg[5] = scr_gettext("obj_adate_981")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 79
}
if (cn == 79 && instance_exists(OBJ_WRITER) == false)
{
    pitch = 0.75
    al.shake = 2
    global.typer = 75
    if (choice == 0)
    {
        FL_AnimationIndex = 7
        global.faceemotion = 11
        global.msg[0] = scr_gettext("obj_adate_997")
        global.msg[1] = scr_gettext("obj_adate_998")
        global.msg[2] = scr_gettext("obj_adate_999")
        global.msg[3] = scr_gettext("obj_adate_1000")
    }
    else
    {
        FL_AnimationIndex = 7
        global.faceemotion = 11
        global.msg[0] = scr_gettext("obj_adate_1006")
        global.msg[1] = scr_gettext("obj_adate_1007")
        global.msg[2] = scr_gettext("obj_adate_1008")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 110
}
if (cn == 90)
{
    global.typer = 74
    global.faceemotion = 9
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1023")
    global.msg[1] = scr_gettext("obj_adate_1024")
    global.msg[2] = scr_gettext("obj_adate_1025")
    global.msg[3] = scr_gettext("obj_adate_1026")
    global.msg[4] = scr_gettext("obj_adate_1027")
    global.msg[5] = scr_gettext("obj_adate_1028")
    global.msg[6] = scr_gettext("obj_adate_1029")
    scr_blcon((xx - 260), yy, 1)
    cn = 91
}
if (cn == 91 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0)
    {
        choice = 0
        choicer = 1
        global.typer = 1
        global.msg[0] = scr_gettext("obj_adate_1043")
        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
        with (iii)
            halt = 0
        cn = 92
    }
}
if (cn == 92 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 93
    choicer = 0
    alarm[4] = 10
}
if (cn == 94)
{
    global.typer = 74
    FL_AnimationIndex = 0
    if (choice == 0)
    {
        FL_AnimationIndex = 3
        global.faceemotion = 2
        global.msg[0] = scr_gettext("obj_adate_1069")
        global.msg[1] = scr_gettext("obj_adate_1070")
        global.msg[2] = scr_gettext("obj_adate_1071")
        global.msg[3] = scr_gettext("obj_adate_1072")
    }
    else
    {
        FL_AnimationIndex = 1
        global.faceemotion = 9
        global.msg[0] = scr_gettext("obj_adate_1078")
        global.msg[1] = scr_gettext("obj_adate_1079")
        global.msg[2] = scr_gettext("obj_adate_1080")
        global.msg[3] = scr_gettext("obj_adate_1081")
        global.msg[4] = scr_gettext("obj_adate_1082")
        global.msg[5] = scr_gettext("obj_adate_1083")
        global.msg[6] = scr_gettext("obj_adate_1084")
        global.msg[7] = scr_gettext("obj_adate_1085")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 94.1
}
if (cn == 94.1 && instance_exists(OBJ_WRITER) == false)
{
    cn = 94.2
    alarm[4] = 20
}
if (cn == 95.2)
    cn = 95
if (cn == 95 && instance_exists(OBJ_WRITER) == false)
{
    choice = 0
    choicer = 1
    global.typer = 1
    global.msg[0] = scr_gettext("obj_adate_1108")
    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    with (iii)
        halt = 0
    cn = 96
}
if (cn == 96 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 97
    choicer = 0
    alarm[4] = 10
}
if (cn == 98)
{
    global.typer = 74
    FL_AnimationIndex = 0
    if (choice == 0)
    {
        FL_AnimationIndex = 4
        global.faceemotion = 9
        global.msg[0] = scr_gettext("obj_adate_1132")
        global.msg[1] = scr_gettext("obj_adate_1133")
        global.msg[2] = scr_gettext("obj_adate_1134")
        global.msg[3] = scr_gettext("obj_adate_1135")
        global.msg[4] = scr_gettext("obj_adate_1136")
        global.msg[5] = scr_gettext("obj_adate_1137")
    }
    else
    {
        FL_AnimationIndex = 1
        global.faceemotion = 9
        global.msg[0] = scr_gettext("obj_adate_1143")
        global.msg[1] = scr_gettext("obj_adate_1144")
        global.msg[2] = scr_gettext("obj_adate_1145")
        global.msg[3] = scr_gettext("obj_adate_1146")
        global.msg[4] = scr_gettext("obj_adate_1147")
        global.msg[5] = scr_gettext("obj_adate_1148")
        global.msg[6] = scr_gettext("obj_adate_1149")
        global.msg[7] = scr_gettext("obj_adate_1150")
        global.msg[8] = scr_gettext("obj_adate_1151")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 99
}
if (cn == 99 && instance_exists(OBJ_WRITER) == false)
{
    pitch = 0.75
    al.shake = 2
    global.typer = 75
    if (choice == 0)
    {
        FL_AnimationIndex = 7
        global.faceemotion = 11
        global.msg[0] = scr_gettext("obj_adate_1167")
        global.msg[1] = scr_gettext("obj_adate_1168")
        global.msg[2] = scr_gettext("obj_adate_1169")
    }
    else
    {
        FL_AnimationIndex = 7
        global.faceemotion = 11
        global.msg[0] = scr_gettext("obj_adate_1176")
        global.msg[1] = scr_gettext("obj_adate_1177")
    }
    scr_blcon((xx - 260), yy, 1)
    cn = 110
}
if (cn == 110 && instance_exists(OBJ_WRITER))
{
    if (pitch < 2)
        pitch += 0.01
    caster_set_pitch(global.currentsong, pitch)
}
if (cn == 110 && instance_exists(OBJ_WRITER) == false)
{
    global.facechoice = 5
    with (obj_adate_ubody)
        instance_destroy()
    und = instance_create(-100, (trashcan.y + 10), obj_adate_ubody)
    und.y -= ((und.sprite_height * 2) + 66)
    und.hspeed = 20
    cn = 111
}
if (cn == 111)
{
    if (und.x > 60)
    {
        obj_adate_body.set = 1
        obj_adate_body.shake = 0
        global.faceemotion = 8
        und.x = 60
        und.hspeed = 0
        cn = 112
        alarm[4] = 15
    }
}
if (cn == 111 || cn == 112)
{
    if caster_is_playing(global.currentsong)
    {
        if (pitch > 0)
            pitch -= 0.04
        else
            caster_stop(global.currentsong)
        caster_set_pitch(global.currentsong, pitch)
        caster_set_volume(global.currentsong, (pitch / 2))
    }
}
if (cn == 113)
{
    caster_stop(global.currentsong)
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1236")
    scr_blcon((xxx + 90), (yyy + 20), 0)
    cn = 113.1
}
if (cn == 113.1 && instance_exists(OBJ_WRITER) == false)
{
    cn = 113.2
    alarm[4] = 5
    al.hspeed = 10
}
if (cn == 114.2)
    cn = 114
if (cn == 114 && instance_exists(OBJ_WRITER) == false)
{
    xx = al.x
    yy = al.y
    al.hspeed = 0
    global.typer = 74
    global.faceemotion = 1
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1259")
    scr_blcon((xx - 250), yy, 1)
    cn = 115
}
if (cn == 115 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1271")
    global.msg[1] = scr_gettext("obj_adate_1272")
    global.msg[2] = scr_gettext("obj_adate_1273")
    global.msg[3] = scr_gettext("obj_adate_1274")
    global.msg[4] = scr_gettext("obj_adate_1275")
    global.msg[5] = scr_gettext("obj_adate_1276")
    scr_blcon((xxx + 90), (yyy + 20), 0)
    cn = 116
}
if (cn == 116 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 74
    global.faceemotion = 1
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1287")
    global.msg[1] = scr_gettext("obj_adate_1288")
    global.msg[2] = scr_gettext("obj_adate_1289")
    global.msg[3] = scr_gettext("obj_adate_1290")
    scr_blcon((xx - 250), yy, 1)
    cn = 117
}
if (cn == 117 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1300")
    scr_blcon((xxx + 90), (yyy + 20), 0)
    cn = 118
}
if (cn == 118 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 74
    global.faceemotion = 8
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1311")
    global.msg[1] = scr_gettext("obj_adate_1312")
    global.msg[2] = scr_gettext("obj_adate_1313")
    scr_blcon((xx - 250), yy, 1)
    cn = 119
}
if (cn == 119 && instance_exists(OBJ_WRITER) == false)
{
    confession = caster_load("music/confession.ogg")
    global.currentsong = caster_loop(confession, 1, 1)
    global.typer = 74
    global.faceemotion = 7
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1326")
    scr_blcon((xx - 250), yy, 1)
    cn = 120
}
if (cn == 120 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1336")
    scr_blcon((xxx + 90), (yyy + 20), 0)
    cn = 121
}
if (cn == 121 && instance_exists(OBJ_WRITER) == false)
{
    trashcan.depth = 90
    al.depth = -1
    und.depth = 0
    global.typer = 74
    global.faceemotion = 3
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1349")
    global.msg[1] = scr_gettext("obj_adate_1350")
    scr_blcon((xx - 250), yy, 1)
    cn = 122
}
if (cn == 122 && instance_exists(OBJ_WRITER) == false)
{
    al.hspeed = -10
    cn = 121.1
    alarm[4] = 15
}
if (cn == 122.1)
{
    xx = al.x
    al.hspeed = 0
    global.msg[0] = scr_gettext("obj_adate_1366")
    global.msg[1] = scr_gettext("obj_adate_1367")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 122.3
}
if (cn == 122.3 && instance_exists(OBJ_WRITER) == false)
{
    al.hspeed = -10
    cn = 121.4
    alarm[4] = 5
}
if (cn == 122.4)
{
    xx = al.x
    al.hspeed = 0
    global.msg[0] = scr_gettext("obj_adate_1383")
    global.msg[1] = scr_gettext("obj_adate_1384")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 122.5
}
if (cn == 122.5 && instance_exists(OBJ_WRITER) == false)
{
    al.hspeed = -10
    cn = 121.6
    alarm[4] = 5
}
if (cn == 122.6)
{
    xx = al.x
    al.hspeed = 0
    global.msg[0] = scr_gettext("obj_adate_1400")
    global.msg[1] = scr_gettext("obj_adate_1401")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 122.8
}
if (cn == 122.8 && instance_exists(OBJ_WRITER) == false)
{
    al.hspeed = -9
    cn = 121.9
    alarm[4] = 5
}
if (cn == 122.9)
{
    xx = al.x
    al.hspeed = 0
    global.msg[0] = scr_gettext("obj_adate_1417")
    global.msg[1] = scr_gettext("obj_adate_1418")
    global.msg[2] = scr_gettext("obj_adate_1419")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 125
}
if (cn == 125 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1433")
    scr_blcon((xxx + 90), (yyy - 10), 0)
    cn = 127
}
if (cn == 127 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 74
    global.faceemotion = 5
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1444")
    global.msg[1] = scr_gettext("obj_adate_1445")
    global.msg[2] = scr_gettext("obj_adate_1446")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 130
}
if (cn == 130 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 39
    xxx = und.x
    yyy = und.y
    und.visible = false
    al.visible = false
    thrower = instance_create((und.x - 34), (und.y - 56), obj_ua_throwtest)
    global.msg[0] = scr_gettext("obj_adate_1459")
    scr_blcon((xxx + 90), (yyy - 10), 0)
    cn = 131
}
if (cn == 131 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 74
    global.faceemotion = 5
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_adate_1470")
    scr_blcon_ofs((xx + 110), yy, 0, 6, 0)
    cn = 132
}
if (cn == 132 && instance_exists(OBJ_WRITER) == false)
{
    thrower.con = 1
    global.typer = 39
    xxx = und.x
    yyy = und.y
    global.msg[0] = scr_gettext("obj_adate_1481")
    global.msg[1] = scr_gettext("obj_adate_1482")
    global.msg[2] = scr_gettext("obj_adate_1483")
    scr_blcon((xxx + 140), (yyy + 40), 0)
    cn = 133
}
if (cn == 133 && instance_exists(OBJ_WRITER) == false)
{
    cn = 134
    alarm[4] = 30
}
if (cn == 135)
{
    caster_stop(global.currentsong)
    thrower.con = 3
    cn = 136
    alarm[4] = 100
}
if (cn == 137)
{
    with (thrower)
        instance_destroy()
    global.facechoice = 0
    und.set = 1
    und.visible = true
    with (trashcan)
    {
        fadein = 1
        con = 1
    }
    cn = 138
    alarm[4] = 90
}
if (cn == 139)
{
    utheme = caster_load("music/undynetruetheme.ogg")
    global.currentsong = caster_loop(utheme, 0.9, 1)
    global.msg[0] = scr_gettext("obj_adate_1522")
    global.msg[1] = scr_gettext("obj_adate_1523")
    global.msg[2] = scr_gettext("obj_adate_1524")
    global.msg[3] = scr_gettext("obj_adate_1525")
    global.msg[4] = scr_gettext("obj_adate_1526")
    global.msg[5] = scr_gettext("obj_adate_1527")
    global.msg[6] = scr_gettext("obj_adate_1528")
    global.msg[7] = scr_gettext("obj_adate_1529")
    global.msg[8] = scr_gettext("obj_adate_1530")
    global.msg[9] = scr_gettext("obj_adate_1531")
    global.msg[10] = scr_gettext("obj_adate_1532")
    global.msg[11] = scr_gettext("obj_adate_1533")
    global.msg[12] = scr_gettext("obj_adate_1534")
    global.typer = 39
    xxx = und.x
    yyy = und.y
    scr_blcon((xxx + 90), (yyy - 10), 0)
    cn = 140
}
if (cn == 140 && instance_exists(OBJ_WRITER) == false)
{
    trashcan.shake = 3
    cn = 141
    alarm[4] = 30
}
if (cn == 142)
{
    trashcan.shake = 0
    global.faceemotion = 0
    trashcan.aturn = 1
    cn = 143
    alarm[4] = 30
}
if (cn == 144)
{
    xx = trashcan.x
    yy = ((trashcan.y - (trashcan.sprite_height * 2)) + 20)
    global.typer = 74
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_adate_1566")
    global.msg[1] = scr_gettext("obj_adate_1567")
    scr_blcon((xx - 320), yy, 1)
    cn = 145
}
if (cn == 145 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_adate_1574")
    global.typer = 39
    xxx = und.x
    yyy = und.y
    scr_blcon((xxx + 90), (yyy - 10), 0)
    cn = 146
}
if (cn == 146 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 0
    caster_stop(global.currentsong)
    pap = instance_create(400, 400, obj_adate_papyrus)
    cn = 147
    alarm[4] = 110
}
if (cn == 148)
{
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_adate_1594")
    global.typer = 39
    scr_blcon((xxx + 90), (yyy + 120), 0)
    cn = 149
}
if (cn == 149 && instance_exists(OBJ_WRITER) == false)
{
    pap.con = 2
    cn = 150
    alarm[4] = 60
}
if (cn == 151)
{
    global.faceemotion = 2
    global.typer = 22
    global.msg[0] = scr_gettext("obj_adate_1612")
    global.msg[1] = scr_gettext("obj_adate_1613")
    scr_blcon((pap.x - 150), (pap.y - 80), 1)
    if (global.language == "ja")
        OBJ_WRITER.writingxend -= 8
    cn = 153
}
if (cn == 153 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 2
    global.msg[0] = scr_gettext("obj_adate_1622")
    global.typer = 39
    scr_blcon((xxx + 90), (yyy + 20), 0)
    cn = 155
}
if (cn == 155 && instance_exists(OBJ_WRITER) == false)
{
    xx = trashcan.x
    yy = ((trashcan.y - (trashcan.sprite_height * 2)) + 20)
    global.typer = 74
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_adate_1636")
    global.msg[1] = scr_gettext("obj_adate_1637")
    scr_blcon((xx - 80), (yy - 140), 2)
    cn = 156
}
if (cn == 156 && instance_exists(OBJ_WRITER) == false)
{
    with (obj_musfadeout)
        instance_destroy()
    pap.hspeed = 10
    trashcan.hspeed = 10
    cn = 157
    alarm[4] = 80
}
if (cn == 158)
{
    und.set = 0
    global.facechoice = 1
    caster_free(all)
    global.currentsong = caster_load("music/undynetruetheme.ogg")
    caster_loop(global.currentsong, 0.65, 2)
    global.msg[0] = scr_gettext("obj_adate_1659")
    global.msg[1] = scr_gettext("obj_adate_1660")
    global.msg[2] = scr_gettext("obj_adate_1661")
    global.msg[3] = scr_gettext("obj_adate_1662")
    global.msg[4] = scr_gettext("obj_adate_1663")
    global.typer = 39
    scr_blcon((xxx + 90), (yyy - 20), 0)
    cn = 158.1
}
if (cn == 158.1 && instance_exists(OBJ_WRITER) == false)
{
    alarm[4] = 15
    cn = 158.2
}
if (cn == 159.2)
    cn = 159
if (cn == 159 && instance_exists(OBJ_WRITER) == false)
{
    choice = 0
    choicer = 1
    global.typer = 1
    global.msg[0] = scr_gettext("obj_adate_1688")
    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    with (iii)
        halt = 0
    cn = 160
}
if (cn == 160 && choicer == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    cn = 161
    choicer = 0
    alarm[4] = 10
}
if (cn == 162)
{
    if (choice == 0)
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Alphys", "R", 1)
        ossafe_ini_close()
        ossafe_savedata_save()
        global.msg[0] = scr_gettext("obj_adate_1708")
        global.msg[1] = scr_gettext("obj_adate_1709")
        global.msg[2] = scr_gettext("obj_adate_1710")
    }
    else
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Alphys", "R", 2)
        ossafe_ini_close()
        ossafe_savedata_save()
        global.msg[0] = scr_gettext("obj_adate_1714")
        global.msg[1] = scr_gettext("obj_adate_1715")
    }
    global.typer = 39
    scr_blcon((xxx + 90), (yyy - 20), 0)
    cn = 163
}
if (cn == 163 && instance_exists(OBJ_WRITER) == false)
{
    mfo = instance_create(0, 0, obj_musfadeout)
    cn = 164
    alarm[4] = 20
}
if (cn == 165 && instance_exists(OBJ_WRITER) == false)
{
    if (choice == 0)
    {
        global.msg[0] = scr_gettext("obj_adate_1736")
        global.msg[1] = scr_gettext("obj_adate_1737")
        global.msg[2] = scr_gettext("obj_adate_1738")
        global.msg[3] = scr_gettext("obj_adate_1739")
        global.msg[4] = scr_gettext("obj_adate_1740")
        global.msg[5] = scr_gettext("obj_adate_1741")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_adate_1745")
        global.msg[1] = scr_gettext("obj_adate_1746")
        global.msg[2] = scr_gettext("obj_adate_1747")
        global.msg[3] = scr_gettext("obj_adate_1748")
        global.msg[4] = scr_gettext("obj_adate_1749")
        global.msg[5] = scr_gettext("obj_adate_1750")
        global.msg[6] = scr_gettext("obj_adate_1751")
    }
    global.typer = 39
    scr_blcon((xxx + 90), (yyy - 20), 0)
    cn = 166
}
if (cn == 166 && instance_exists(OBJ_WRITER) == false)
{
    und.hspeed = 20
    cn = 167
    alarm[4] = 30
}
if (cn == 168)
{
    instance_create(0, 0, obj_unfader)
    cn = 169
    alarm[4] = 12
}
if (cn == 170)
{
    ossafe_ini_open("undertale.ini")
    adhd = ini_read_real("Alphys", "AD", 0)
    ini_write_real("Alphys", "AD", (adhd + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    instance_create(0, 0, obj_persistentfader)
    FL_AlphysLabLocked = 0
    FL_DatedAlphys = 10
    room_goto(room_water_trashzone1)
}
if instance_exists(obj_blconwideslave)
    scr_textskip()
