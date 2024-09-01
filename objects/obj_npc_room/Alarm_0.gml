myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_asrielroom_final)
{
    if (x <= (-10 + (room_width / 2)))
    {
        if (FL_GotDagger == 0)
            global.msc = 268
        else
            global.msc = 272
    }
    if (x >= (-10 + (room_width / 2)))
    {
        if (FL_GotLocket == 0)
            global.msc = 270
        else
            global.msc = 272
    }
}
if (room == room_kitchen_final)
{
    global.msg[0] = scr_gettext("obj_npc_room_271")
    global.msg[1] = scr_gettext("obj_npc_room_272")
}
if (room == room_asgoreroom)
    global.msg[0] = scr_gettext("obj_npc_room_277")
if (room == room_water2)
{
    global.msg[0] = scr_gettext("obj_npc_room_282")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_283")
    if (obj_echoflower.v == 1)
        global.msg[0] = scr_gettext("obj_npc_room_284")
}
if (room == room_water5A)
    global.msc = 246
if (room == room_water3A)
    global.msc = 248
if (room == room_water_savepoint1)
{
    global.msg[0] = scr_gettext("obj_npc_room_291")
    global.msg[1] = scr_gettext("obj_npc_room_292")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_npc_room_295")
}
if (room == room_water11)
{
    global.msg[0] = scr_gettext("obj_npc_room_300")
    global.msg[1] = scr_gettext("obj_npc_room_301")
    global.msg[2] = scr_gettext("obj_npc_room_302")
    global.msg[3] = scr_gettext("obj_npc_room_303")
    global.msg[4] = scr_gettext("obj_npc_room_304")
    global.msg[5] = scr_gettext("obj_npc_room_305")
    if (FL_HaveUmbrella == 1)
        global.msg[0] = scr_gettext("obj_npc_room_308")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_313")
        global.msg[1] = scr_gettext("obj_npc_room_314")
    }
    if (FL_UndyneStatus == UndyneStatus.Killed)
    {
        global.msg[0] = scr_gettext("obj_npc_room_319")
        global.msg[1] = scr_gettext("obj_npc_room_320")
    }
}
if (room == room_water_nicecream)
    global.msc = 250
if (room == room_water_shoe)
    global.msc = 252
if (sprite_index == spr_signsock)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_npc_room_334")
    global.msg[1] = scr_gettext("obj_npc_room_335")
    global.msg[2] = scr_gettext("obj_npc_room_336")
    global.msg[3] = scr_gettext("obj_npc_room_337")
    global.msg[4] = scr_gettext("obj_npc_room_338")
    global.msg[5] = scr_gettext("obj_npc_room_339")
    global.msg[6] = scr_gettext("obj_npc_room_340")
    global.msg[7] = scr_gettext("obj_npc_room_341")
    global.msg[8] = scr_gettext("obj_npc_room_342")
    global.msg[9] = scr_gettext("obj_npc_room_343")
    global.msg[10] = scr_gettext("obj_npc_room_344")
    global.msg[11] = scr_gettext("obj_npc_room_345")
    global.msg[12] = scr_gettext("obj_npc_room_346")
    global.msg[13] = scr_gettext("obj_npc_room_347")
    global.msg[14] = scr_gettext("obj_npc_room_348")
    global.msg[15] = scr_gettext("obj_npc_room_349")
    global.msg[16] = scr_gettext("obj_npc_room_350")
    global.msg[17] = scr_gettext("obj_npc_room_351")
    global.msg[18] = scr_gettext("obj_npc_room_352")
    global.msg[19] = scr_gettext("obj_npc_room_353")
    global.msg[20] = scr_gettext("obj_npc_room_354")
    global.msg[21] = scr_gettext("obj_npc_room_355")
    global.msg[22] = scr_gettext("obj_npc_room_356")
}
if (room == room_water_mushroom)
    global.msc = 580
if (room == room_water_undyneyard)
{
    global.msg[0] = scr_gettext("obj_npc_room_368")
    global.msg[1] = scr_gettext("obj_npc_room_369")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_372")
        global.msg[1] = scr_gettext("obj_npc_room_373")
    }
    if (scr_murderlv() >= MurderLevel.Lv9ShyrenKilled)
    {
        global.msg[0] = scr_gettext("obj_npc_room_377")
        global.msg[1] = scr_gettext("obj_npc_room_378")
    }
}
if (room == room_water_farm)
{
    global.msg[0] = scr_gettext("obj_npc_room_384")
    global.msg[1] = scr_gettext("obj_npc_room_385")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_388")
        global.msg[1] = scr_gettext("obj_npc_room_389")
    }
}
if (room == room_fire8)
{
    global.msg[0] = scr_gettext("obj_npc_room_406")
    global.msg[1] = scr_gettext("obj_npc_room_407")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_409")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_417")
        global.msg[1] = scr_gettext("obj_npc_room_418")
    }
    if (FL_KilledMettaton == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_423")
        global.msg[1] = scr_gettext("obj_npc_room_424")
    }
    if (id == instance_find(object_index, 1))
    {
        global.msg[0] = scr_gettext("obj_npc_room_430")
        global.msg[1] = scr_gettext("obj_npc_room_431")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_434")
        if (FL_TruePacifist == true)
            global.msg[0] = scr_gettext("obj_npc_room_436")
        if (FL_KilledMettaton == 1)
            global.msg[0] = scr_gettext("obj_npc_room_440")
    }
}
if (room == room_fire9)
{
    global.msg[0] = scr_gettext("obj_npc_room_451")
    global.msg[1] = scr_gettext("obj_npc_room_452")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_454")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_458")
        global.msg[1] = scr_gettext("obj_npc_room_459")
    }
    if (FL_KilledMettaton == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_464")
        global.msg[1] = scr_gettext("obj_npc_room_465")
    }
    if (id == instance_find(object_index, 1))
    {
        global.msg[0] = scr_gettext("obj_npc_room_470")
        global.msg[1] = scr_gettext("obj_npc_room_471")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_474")
        if (FL_TruePacifist == true)
        {
            global.msg[0] = scr_gettext("obj_npc_room_478")
            global.msg[1] = scr_gettext("obj_npc_room_479")
        }
        if (FL_KilledMettaton == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_484")
            global.msg[1] = scr_gettext("obj_npc_room_485")
        }
    }
}
if (room == room_fire6A)
    global.msc = 260
if (room == room_fire_apron)
    global.msc = 262
if (room == room_fire_walkandbranch)
{
    if (talkedto == 0)
    {
        global.msg[0] = scr_gettext("obj_npc_room_sosorry_0")
        global.msg[1] = scr_gettext("obj_npc_room_sosorry_1")
        global.msg[2] = scr_gettext("obj_npc_room_sosorry_2")
        global.msg[3] = scr_gettext("obj_npc_room_sosorry_3")
        global.msg[4] = scr_gettext("obj_npc_room_sosorry_4")
        global.msg[5] = scr_gettext("obj_npc_room_sosorry_5")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_npc_room_sosorry_6")
        global.msg[1] = scr_gettext("obj_npc_room_sosorry_7")
        global.msg[2] = scr_gettext("obj_npc_room_sosorry_8")
    }
}
if (room == room_fire_mewmew2)
{
    global.msg[0] = scr_gettext("obj_npc_room_508")
    global.msg[1] = scr_gettext("obj_npc_room_509")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_npc_room_513")
}
if (room == room_water_undynehouse)
{
    global.facechoice = 5
    global.faceemotion = 9
    global.typer = 37
    global.msc = 0
    global.msg[0] = scr_gettext("obj_npc_room_523")
    global.msg[1] = scr_gettext("obj_npc_room_524")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_527")
}
if (room == room_fire_spidershop)
{
    global.msg[0] = scr_gettext("obj_npc_room_534")
    global.msg[1] = scr_gettext("obj_npc_room_535")
    global.msg[2] = scr_gettext("obj_npc_room_536")
    global.msg[3] = scr_gettext("obj_npc_room_537")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_540")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_545")
        global.msg[1] = scr_gettext("obj_npc_room_546")
    }
    if (FL_KilledMettaton == 1)
        global.msg[0] = scr_gettext("obj_npc_room_551")
}
if (room == room_fire_core_treasureleft)
    global.msc = 264
if (room == room_fire_core_treasureright)
    global.msc = 266
if (room == room_castle_exit)
    global.msg[0] = scr_gettext("obj_npc_room_568")
if (room == room_fire_prelab)
{
    if (y < 70)
    {
        global.msg[0] = scr_gettext("obj_npc_room_580")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_582")
    }
}
if (room == room_truelab_bedroom)
    global.msg[0] = scr_gettext("obj_npc_room_588")
if (room == room_tundra_sansroom)
{
    global.msg[0] = scr_gettext("obj_npc_room_593")
    global.msg[1] = scr_gettext("obj_npc_room_594")
}
if (room == room_fire_hotelfront_1)
    global.msg[0] = scr_gettext("obj_npc_room_599")
if (room == room_tundra4)
    global.msg[0] = scr_gettext("obj_npc_room_604")
if (room == room_water_blookyard)
{
    global.typer = 27
    global.facechoice = 8
    if (FL_MettatonPacifistConvoCounter == 0)
    {
        global.msg[0] = scr_gettext("obj_npc_room_615")
        global.msg[1] = scr_gettext("obj_npc_room_616")
        global.msg[2] = scr_gettext("obj_npc_room_617")
        global.msg[3] = scr_gettext("obj_npc_room_618")
        global.msg[4] = scr_gettext("obj_npc_room_619")
        global.msg[5] = scr_gettext("obj_npc_room_620")
        global.msg[6] = scr_gettext("obj_npc_room_621")
        global.msg[7] = scr_gettext("obj_npc_room_622")
        global.msg[8] = scr_gettext("obj_npc_room_623")
        global.msg[9] = scr_gettext("obj_npc_room_624")
        global.msg[10] = scr_gettext("obj_npc_room_625")
        global.msg[11] = scr_gettext("obj_npc_room_626")
        global.msg[12] = scr_gettext("obj_npc_room_627")
    }
    if (FL_MettatonPacifistConvoCounter == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_631")
        global.msg[1] = scr_gettext("obj_npc_room_632")
        global.msg[2] = scr_gettext("obj_npc_room_633")
        global.msg[3] = scr_gettext("obj_npc_room_634")
        global.msg[4] = scr_gettext("obj_npc_room_635")
        global.msg[5] = scr_gettext("obj_npc_room_636")
        global.msg[6] = scr_gettext("obj_npc_room_638")
        global.msg[7] = scr_gettext("obj_npc_room_640")
        global.msg[8] = scr_gettext("obj_npc_room_641")
        global.msg[9] = scr_gettext("obj_npc_room_642")
        global.msg[10] = scr_gettext("obj_npc_room_644")
        global.msg[11] = scr_gettext("obj_npc_room_645")
        global.msg[12] = scr_gettext("obj_npc_room_646")
    }
    if (FL_MettatonPacifistConvoCounter >= 2)
    {
        global.msg[0] = scr_gettext("obj_npc_room_651")
        global.msg[1] = scr_gettext("obj_npc_room_652")
        global.msg[2] = scr_gettext("obj_npc_room_653")
    }
    FL_MettatonPacifistConvoCounter += 1
}
if (room == room_ice_dog)
{
    global.msg[0] = scr_gettext("obj_npc_room_662")
    global.msg[1] = scr_gettext("obj_npc_room_663")
}
if (room == room_fire_restaurant)
{
    global.msg[0] = scr_gettext("obj_npc_room_669")
    global.msg[1] = scr_gettext("obj_npc_room_670")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_npc_room_674")
    if (FL_KilledMettaton == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_679")
        global.msg[1] = scr_gettext("obj_npc_room_680")
        global.msg[2] = scr_gettext("obj_npc_room_681")
    }
    if (x < 120)
    {
        global.msg[0] = scr_gettext("obj_npc_room_686")
        global.msg[1] = scr_gettext("obj_npc_room_687")
        global.msg[2] = scr_gettext("obj_npc_room_688")
        if (FL_TruePacifist == true)
        {
            global.msg[0] = scr_gettext("obj_npc_room_692")
            global.msg[1] = scr_gettext("obj_npc_room_693")
            global.msg[2] = scr_gettext("obj_npc_room_694")
        }
        if (FL_KilledMettaton == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_699")
            global.msg[1] = scr_gettext("obj_npc_room_700")
        }
    }
    if (y > 120)
    {
        if (x > 600 && x < 660)
        {
            global.msg[0] = scr_gettext("obj_npc_room_709")
            global.msg[1] = scr_gettext("obj_npc_room_710")
            global.msg[2] = scr_gettext("obj_npc_room_711")
            if (FL_TruePacifist == true)
            {
                global.msg[0] = scr_gettext("obj_npc_room_715")
                global.msg[1] = scr_gettext("obj_npc_room_716")
            }
            if (FL_KilledMettaton == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_721")
                global.msg[1] = scr_gettext("obj_npc_room_722")
            }
        }
        if (x > 510 && x < 540)
        {
            global.msg[0] = scr_gettext("obj_npc_room_728")
            global.msg[1] = scr_gettext("obj_npc_room_729")
            global.msg[2] = scr_gettext("obj_npc_room_730")
            if (FL_TruePacifist == true)
            {
                global.msg[0] = scr_gettext("obj_npc_room_734")
                global.msg[1] = scr_gettext("obj_npc_room_735")
            }
            if (FL_KilledMettaton == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_740")
                global.msg[1] = scr_gettext("obj_npc_room_741")
                global.msg[2] = scr_gettext("obj_npc_room_742")
            }
        }
    }
}
if (room == room_fire_pacing)
{
    global.msg[0] = scr_gettext("obj_npc_room_751")
    global.msg[1] = scr_gettext("obj_npc_room_752")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_756")
        global.msg[1] = scr_gettext("obj_npc_room_757")
    }
    if (FL_KilledMettaton == 1)
        global.msg[0] = scr_gettext("obj_npc_room_762")
}
if (room == room_fire_hotellobby)
{
    global.msg[0] = scr_gettext("obj_npc_room_769")
    global.msg[1] = scr_gettext("obj_npc_room_770")
    global.msg[2] = scr_gettext("obj_npc_room_771")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_npc_room_775")
        global.msg[1] = scr_gettext("obj_npc_room_776")
    }
    if (FL_KilledMettaton == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_781")
        global.msg[1] = scr_gettext("obj_npc_room_782")
        global.msg[2] = scr_gettext("obj_npc_room_783")
        global.msg[3] = scr_gettext("obj_npc_room_784")
    }
}
if (room == room_fire_hotdog)
{
    if (x > 170)
    {
        global.msg[0] = scr_gettext("obj_npc_room_792")
        global.msg[1] = scr_gettext("obj_npc_room_793")
        global.msg[2] = scr_gettext("obj_npc_room_794")
        if (!instance_exists(obj_sans_room))
        {
            global.msg[0] = scr_gettext("obj_npc_room_798")
            global.msg[1] = scr_gettext("obj_npc_room_799")
            global.msg[2] = scr_gettext("obj_npc_room_800")
        }
        if (FL_TruePacifist == true)
        {
            global.msg[0] = scr_gettext("obj_npc_room_805")
            global.msg[1] = scr_gettext("obj_npc_room_806")
            global.msg[2] = scr_gettext("obj_npc_room_807")
        }
    }
    else
        global.msg[0] = scr_gettext("obj_npc_room_812")
}
if (room == room_water_temvillage)
    global.msg[0] = scr_gettext("obj_npc_room_817")
if (room == room_water_trashzone1)
{
    if (FL_DogShrineTrashChecked == 0)
        global.msc = 952
    if (FL_DogShrineTrashChecked >= 1)
        global.msc = 960
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
