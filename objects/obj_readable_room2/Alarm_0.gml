myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_readable_room2_60")
if (room == room_asrielroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_63")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_readable_room2_67")
}
if (room == room_asrielroom_final)
{
    global.msg[0] = scr_gettext("obj_readable_room2_72")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_75")
}
if (room == room_torhouse2)
{
    global.msg[0] = scr_gettext("obj_readable_room2_80")
    global.msg[1] = scr_gettext("obj_readable_room2_81")
    global.msg[2] = scr_gettext("obj_readable_room2_82")
    global.msg[3] = scr_gettext("obj_readable_room2_83")
    global.msg[4] = scr_gettext("obj_readable_room2_84")
    global.msg[5] = scr_gettext("obj_readable_room2_85")
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_90")
    global.msg[1] = scr_gettext("obj_readable_room2_91")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_94")
}
if (room == room_asghouse2)
{
    global.msg[0] = scr_gettext("obj_readable_room2_100")
    global.msg[1] = scr_gettext("obj_readable_room2_101")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_105")
}
if (room == room_asghouse3)
    global.msg[0] = scr_gettext("obj_readable_room2_111")
if (room == room_torhouse1)
    global.msg[0] = scr_gettext("obj_readable_room2_114")
if (room == room_asghouse1)
    global.msg[0] = scr_gettext("obj_readable_room2_115")
if (room == room_castle_throneroom)
    global.msg[0] = scr_gettext("obj_readable_room2_119")
if (room == room_torielroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_124")
    if (x > 90)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_127")
        global.msg[1] = scr_gettext("obj_readable_room2_128")
        global.msg[2] = scr_gettext("obj_readable_room2_129")
        FL_KnowWaterSausage = true
    }
}
if (room == room_torhouse3)
{
    global.msg[0] = scr_gettext("obj_readable_room2_135")
    if (FL_KnowWaterSausage == true)
        global.msg[0] = scr_gettext("obj_readable_room2_136")
}
if (room == room_kitchen)
{
    global.msg[0] = scr_gettext("obj_readable_room2_140")
    if (FL_GotBScotchPie > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_141")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_readable_room2_144")
}
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room2_149")
    global.msg[1] = scr_gettext("obj_readable_room2_150")
    global.msg[2] = scr_gettext("obj_readable_room2_151")
    global.msg[3] = scr_gettext("obj_readable_room2_152")
}
if (room == room_icecave1)
    global.msg[0] = scr_gettext("obj_readable_room2_164")
if (room == room_tundra1)
    global.msg[0] = scr_gettext("obj_readable_room2_166")
if (room == room_tundra8)
{
    if instance_exists(obj_iceflag)
    {
        if (read == 0)
        {
            if (obj_iceflag.image_index == 0)
            {
                if (FL_WonBallGame == 0)
                {
                    global.msg[0] = scr_gettext("obj_readable_room2_178")
                    global.msg[1] = scr_gettext("obj_readable_room2_179")
                    global.msg[2] = scr_gettext("obj_readable_room2_180")
                    global.gold += 50
                    FL_WonBallGame = 1
                }
                else
                {
                    global.msg[0] = scr_gettext("obj_readable_room2_186")
                    global.msg[1] = scr_gettext("obj_readable_room2_187")
                    global.gold += 10
                }
            }
            if (obj_iceflag.image_index == 1)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_194")
                global.msg[1] = scr_gettext("obj_readable_room2_195")
                global.gold += 5
            }
            if (obj_iceflag.image_index == 2)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_201")
                global.msg[1] = scr_gettext("obj_readable_room2_202")
                global.gold += 3
            }
            if (obj_iceflag.image_index == 3)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_208")
                global.msg[1] = scr_gettext("obj_readable_room2_209")
                global.gold += 2
            }
            if (obj_iceflag.image_index == 4)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_215")
                global.msg[1] = scr_gettext("obj_readable_room2_216")
                global.gold += 1
            }
            if (obj_iceflag.image_index == 5)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_222")
                global.msg[1] = scr_gettext("obj_readable_room2_223")
                global.gold += 2
            }
            if (obj_iceflag.image_index == 6)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_229")
                global.msg[1] = scr_gettext("obj_readable_room2_230")
                global.msg[2] = scr_gettext("obj_readable_room2_231")
                global.gold += 4
            }
        }
        else
            global.msg[0] = scr_gettext("obj_readable_room2_238")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room2_245")
        if (FL_TundraKillsCounter >= 16)
            global.msg[0] = scr_gettext("obj_readable_room2_247")
    }
}
if (room == room_tundra8A)
    global.msg[0] = scr_gettext("obj_readable_room2_252")
if (room == room_tundra_sanshouse)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room2_259")
        global.msg[2] = scr_gettext("obj_readable_room2_260")
        global.msg[3] = scr_gettext("obj_readable_room2_261")
        global.msg[4] = scr_gettext("obj_readable_room2_262")
        global.msg[5] = scr_gettext("obj_readable_room2_263")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room2_266")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_268")
}
if (room == room_tundra_paproom)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room2_276")
        global.msg[2] = scr_gettext("obj_readable_room2_277")
        global.msg[3] = scr_gettext("obj_readable_room2_278")
        global.msg[4] = scr_gettext("obj_readable_room2_279")
        global.msg[5] = scr_gettext("obj_readable_room2_280")
        global.msg[6] = scr_gettext("obj_readable_room2_281")
        global.msg[7] = scr_gettext("obj_readable_room2_282")
        global.msg[8] = scr_gettext("obj_readable_room2_283")
        global.msg[9] = scr_gettext("obj_readable_room2_284")
        global.msg[10] = scr_gettext("obj_readable_room2_285")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room2_287")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_288")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room2_295")
    global.msg[1] = scr_gettext("obj_readable_room2_296")
    global.msg[2] = scr_gettext("obj_readable_room2_297")
}
if (room == room_water14)
{
    global.msg[0] = scr_gettext("obj_readable_room2_302")
    global.msg[1] = scr_gettext("obj_readable_room2_303")
    global.msg[2] = scr_gettext("obj_readable_room2_304")
}
if (room == room_water15)
{
    global.msg[0] = scr_gettext("obj_readable_room2_310")
    global.msg[1] = scr_gettext("obj_readable_room2_311")
    global.msg[2] = scr_gettext("obj_readable_room2_312")
}
if (room == room_water_preundyne)
{
    global.msg[0] = scr_gettext("obj_readable_room2_318")
    global.msg[1] = scr_gettext("obj_readable_room2_319")
    global.msg[2] = scr_gettext("obj_readable_room2_320")
}
if (room == room_water_prebird)
{
    global.msg[0] = scr_gettext("obj_readable_room2_326")
    global.msg[1] = scr_gettext("obj_readable_room2_327")
}
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room2_332")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room2_333")
}
if (room == room_fire_lab2)
    global.msc = 643
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room2_343")
    if (global.plot < 134)
        global.msg[0] = scr_gettext("obj_readable_room2_345")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room2_353")
        global.msg[1] = scr_gettext("obj_readable_room2_354")
    }
    if (global.plot == 134)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_readable_room2_360")
    }
}
if (room == room_water_undynehouse)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 0
    global.msc = 0
    if (x < 100)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_373")
        global.msg[1] = scr_gettext("obj_readable_room2_374")
        global.msg[2] = scr_gettext("obj_readable_room2_375")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room2_377")
    }
}
if (room == room_fire_spidershop)
    global.msg[0] = scr_gettext("obj_readable_room2_390")
if (room == room_fire_core_branch)
    global.msg[0] = scr_gettext("obj_readable_room2_395")
if (room == room_fire_core_right)
    global.msg[0] = scr_gettext("obj_readable_room2_400")
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room2_405")
    global.msg[1] = scr_gettext("obj_readable_room2_406")
    global.msg[2] = scr_gettext("obj_readable_room2_407")
    global.msg[3] = scr_gettext("obj_readable_room2_408")
    global.msg[4] = scr_gettext("obj_readable_room2_409")
    global.msg[5] = scr_gettext("obj_readable_room2_410")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_412")
}
if (room == room_truelab_prebed)
{
    global.msg[0] = scr_gettext("obj_readable_room2_417")
    global.msg[1] = scr_gettext("obj_readable_room2_418")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_419")
}
if (room == room_truelab_bedroom)
    global.msg[0] = scr_gettext("obj_readable_room2_424")
if (room == room_truelab_mirror)
{
    global.msg[0] = scr_gettext("obj_readable_room2_429")
    global.msg[1] = scr_gettext("obj_readable_room2_430")
    global.msg[2] = scr_gettext("obj_readable_room2_431")
    global.msg[3] = scr_gettext("obj_readable_room2_432")
    global.msg[4] = scr_gettext("obj_readable_room2_433")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_434")
}
if (room == room_truelab_hall3)
{
    global.msg[0] = scr_gettext("obj_readable_room2_439")
    global.msg[1] = scr_gettext("obj_readable_room2_440")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_441")
}
if (room == room_truelab_tv)
{
    global.msg[0] = scr_gettext("obj_readable_room2_446")
    global.msg[1] = scr_gettext("obj_readable_room2_447")
}
if (room == room_truelab_fan)
{
    global.msg[0] = scr_gettext("obj_readable_room2_452")
    global.msg[1] = scr_gettext("obj_readable_room2_453")
    global.msg[2] = scr_gettext("obj_readable_room2_454")
    global.msg[3] = scr_gettext("obj_readable_room2_455")
    global.msg[4] = scr_gettext("obj_readable_room2_456")
    global.msg[5] = scr_gettext("obj_readable_room2_457")
}
if (room == room_truelab_cooler)
{
    global.msg[0] = scr_gettext("obj_readable_room2_462")
    global.msg[1] = scr_gettext("obj_readable_room2_463")
    global.msg[2] = scr_gettext("obj_readable_room2_464")
    global.msg[3] = scr_gettext("obj_readable_room2_465")
    global.msg[4] = scr_gettext("obj_readable_room2_466")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_467")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_readable_room2_468")
}
if (room == room_truelab_prepower)
{
    global.msg[0] = scr_gettext("obj_readable_room2_473")
    if (FL_PowerSwitchAmalgamEvent == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_476")
        global.msg[1] = scr_gettext("obj_readable_room2_477")
    }
}
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_readable_room2_483")
    if (instance_exists(obj_papyrus_houseoutside) || instance_exists(obj_papyrus_room))
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room2_488")
        if instance_exists(obj_undyne_friendc)
        {
            global.msg[1] = scr_gettext("obj_readable_room2_492")
            global.msg[2] = scr_gettext("obj_readable_room2_493")
            scr_undface(3, 6)
            global.msg[4] = scr_gettext("obj_readable_room2_495")
            scr_papface(5, 0)
            global.msg[6] = scr_gettext("obj_readable_room2_497")
            global.msg[7] = scr_gettext("obj_readable_room2_498")
            global.msg[8] = scr_gettext("obj_readable_room2_499")
            scr_undface(9, 9)
            global.msg[10] = scr_gettext("obj_readable_room2_501")
        }
        if (FL_PapyrusStatus < 0)
        {
            global.msg[1] = scr_gettext("obj_readable_room2_506")
            if instance_exists(obj_undyne_friendc)
            {
                global.msg[1] = scr_gettext("obj_readable_room2_509")
                scr_undface(2, 1)
                global.msg[3] = scr_gettext("obj_readable_room2_511")
                scr_papface(4, 0)
                global.msg[5] = scr_gettext("obj_readable_room2_513")
                global.msg[6] = scr_gettext("obj_readable_room2_514")
                scr_undface(7, 0)
                global.msg[8] = scr_gettext("obj_readable_room2_516")
                global.msg[9] = scr_gettext("obj_readable_room2_517")
                scr_papface(10, 1)
                global.msg[11] = scr_gettext("obj_readable_room2_519")
                global.msg[12] = scr_gettext("obj_readable_room2_520")
                scr_undface(13, 1)
                global.msg[14] = scr_gettext("obj_readable_room2_522")
            }
        }
        if (read > 0)
            global.msg[1] = scr_gettext("obj_readable_room2_528")
    }
}
if (room == room_tundra_grillby)
    global.msg[0] = scr_gettext("obj_readable_room2_534")
if (room == room_tundra_sansroom)
    global.msg[0] = scr_gettext("obj_readable_room2_539")
if (room == room_tundra_sansbasement)
    global.msg[0] = scr_gettext("obj_readable_room2_544")
if (room == room_fire_restaurant)
    global.msg[0] = scr_gettext("obj_readable_room2_549")
if (room == room_fire_hotelbed)
{
    global.msg[0] = scr_gettext("obj_readable_room2_554")
    global.msg[1] = scr_gettext("obj_readable_room2_555")
}
if (room == room_water_temvillage)
{
    global.msg[0] = scr_gettext("obj_readable_room2_560")
    if (FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_readable_room2_563")
}
if (room == room_water11)
{
    global.msg[0] = scr_gettext("obj_readable_room2_569")
    global.msg[1] = scr_gettext("obj_readable_room2_570")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
read += 1
