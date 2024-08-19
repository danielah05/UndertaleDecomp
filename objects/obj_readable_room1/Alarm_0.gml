myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_readable_room1_64")
if (room == room_ruins2)
    global.msg[0] = scr_gettext("obj_readable_room1_65")
if (room == room_ruins3)
    global.msg[0] = scr_gettext("obj_readable_room1_66")
if (room == room_ruins5)
    global.msg[0] = scr_gettext("obj_readable_room1_67")
if (room == room_ruins9)
    global.msg[0] = scr_gettext("obj_readable_room1_68")
if (room == room_ruins13)
{
    if (global.osflavor >= OSFlavors.Console)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_69_console_1")
        global.msg[1] = scr_gettext("obj_readable_room1_69_console_2")
        global.msg[2] = scr_gettext("obj_readable_room1_69_console_3")
        global.msg[3] = scr_gettext("obj_readable_room1_69_console_4")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room1_69")
}
if (room == room_ruins14)
    global.msg[0] = scr_gettext("obj_readable_room1_70")
if (room == room_ruins15A)
    global.msg[0] = scr_gettext("obj_readable_room1_71")
if (room == room_ruins15B)
    global.msg[0] = scr_gettext("obj_readable_room1_72")
if (room == room_ruins15C)
    global.msg[0] = scr_gettext("obj_readable_room1_73")
if (room == room_ruins15D)
    global.msg[0] = scr_gettext("obj_readable_room1_74")
if (room == room_torhouse1)
    global.msg[0] = scr_gettext("obj_readable_room1_75")
if (room == room_asghouse1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_78")
    if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_79")
}
if (room == room_torhouse2)
    global.msg[0] = scr_gettext("obj_readable_room1_81")
if (room == room_asghouse2)
    global.msg[0] = scr_gettext("obj_readable_room1_82")
if (room == room_asrielroom)
    global.msg[0] = scr_gettext("obj_readable_room1_83")
if (room == room_asrielroom_final)
    global.msg[0] = scr_gettext("obj_readable_room1_84")
if (room == room_castle_finalshoehorn)
    global.msg[0] = scr_gettext("obj_readable_room1_86")
if (room == room_castle_coffins2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_90")
    global.msg[1] = scr_gettext("obj_readable_room1_91")
    global.msg[2] = scr_gettext("obj_readable_room1_92")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_96")
        global.msg[1] = scr_gettext("obj_readable_room1_97")
        global.msg[2] = scr_gettext("obj_readable_room1_98")
    }
    if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_103")
}
if (room == room_torielroom)
{
    global.msc = 524
    if (x > 192)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_readable_room1_112")
        global.msg[1] = scr_gettext("obj_readable_room1_113")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room1_114")
        if (FL_TruePacifist == true)
        {
            global.msg[0] = scr_gettext("obj_readable_room1_118")
            global.msg[1] = scr_gettext("obj_readable_room1_119")
        }
    }
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_125")
    global.msg[1] = scr_gettext("obj_readable_room1_126")
    if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_130")
    if (y > 120)
        global.msg[0] = scr_gettext("obj_readable_room1_134")
}
if (room == room_castle_throneroom)
    global.msg[0] = scr_gettext("obj_readable_room1_139")
if (room == room_torhouse3)
    global.msg[0] = scr_gettext("obj_readable_room1_142")
if (room == room_asghouse3)
    global.msg[0] = scr_gettext("obj_readable_room1_143")
if (room == room_kitchen)
    global.msg[0] = scr_gettext("obj_readable_room1_144")
if (room == room_kitchen_final)
{
    global.msg[0] = scr_gettext("obj_readable_room1_147")
    if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_151")
}
if (room == room_tundra1)
    global.msg[0] = scr_gettext("obj_readable_room1_154")
if (room == room_tundra8A)
    global.msg[0] = scr_gettext("obj_readable_room1_155")
if (room == room_tundra_snowpuzz)
{
    if (global.plot <= 48)
        global.msg[0] = scr_gettext("obj_readable_room1_158")
    if (global.plot > 48)
        global.msg[0] = scr_gettext("obj_readable_room1_159")
    if (FL_ToggledSnowSwitch == 0)
        FL_ToggledSnowSwitch = 1
    if (global.plot <= 48)
        global.plot = 49
    if (scr_murderlv() >= MurderLevel.Lv3DoggoKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_162")
}
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_readable_room1_164")
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room1_198")
    global.msg[1] = scr_gettext("obj_readable_room1_199")
    global.msg[2] = scr_gettext("obj_readable_room1_200")
    global.msg[3] = scr_gettext("obj_readable_room1_201")
    global.msg[4] = scr_gettext("obj_readable_room1_202")
    global.msg[5] = scr_gettext("obj_readable_room1_203")
}
if (room == room_tundra_inn)
{
    global.msg[0] = scr_gettext("obj_readable_room1_208")
    global.msg[1] = scr_gettext("obj_readable_room1_209")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_213")
        global.msg[1] = scr_gettext("obj_readable_room1_214")
    }
    if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
        global.msg[0] = scr_gettext("obj_readable_room1_219")
}
if (room == room_water12)
{
    global.msg[0] = scr_gettext("obj_readable_room1_228")
    global.msg[1] = scr_gettext("obj_readable_room1_229")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room1_235")
    global.msg[1] = scr_gettext("obj_readable_room1_236")
}
if (room == room_water14)
    global.msg[0] = scr_gettext("obj_readable_room1_241")
if (room == room_water15)
{
    global.msg[0] = scr_gettext("obj_readable_room1_247")
    global.msg[1] = scr_gettext("obj_readable_room1_248")
    global.msg[2] = scr_gettext("obj_readable_room1_249")
}
if (room == room_water19)
{
    global.msg[0] = scr_gettext("obj_readable_room1_256")
    global.msg[1] = scr_gettext("obj_readable_room1_257")
    global.msg[2] = scr_gettext("obj_readable_room1_258")
}
if (room == room_water_nicecream)
    global.msg[0] = scr_gettext("obj_readable_room1_263")
if (room == room_water_prebird)
    global.msg[0] = scr_gettext("obj_readable_room1_269")
if (room == room_water_preundyne)
{
    global.msg[0] = scr_gettext("obj_readable_room1_274")
    global.msg[1] = scr_gettext("obj_readable_room1_275")
}
if (room == room_water17)
    global.msg[0] = scr_gettext("obj_readable_room1_280")
if (room == room_water20)
{
    if instance_exists(obj_monsterkidtrigger7)
        obj_monsterkidtrigger7.con = 80
    cantalk = 0
}
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_292")
    if (global.plot < 126 && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
        global.msg[0] = scr_gettext("obj_readable_room1_293")
}
if (room == room_fire_lab2)
    global.msg[0] = scr_gettext("obj_readable_room1_299")
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room1_304")
    if (global.plot < 134)
        global.msg[0] = scr_gettext("obj_readable_room1_306")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room1_312")
        global.msg[1] = scr_gettext("obj_readable_room1_313")
    }
    if (global.plot == 134)
    {
        snd_play(snd_phone)
        global.typer = 5
        global.msg[0] = scr_gettext("obj_readable_room1_320")
        global.msg[1] = scr_gettext("obj_readable_room1_321")
        global.msg[2] = scr_gettext("obj_readable_room1_322")
        global.msg[3] = scr_gettext("obj_readable_room1_323")
        global.msg[4] = scr_gettext("obj_readable_room1_324")
        global.msg[5] = scr_gettext("obj_readable_room1_325")
        if (specialread > 0)
        {
            global.msg[0] = scr_gettext("obj_readable_room1_328")
            global.msg[1] = scr_gettext("obj_readable_room1_329")
            global.msg[2] = scr_gettext("obj_readable_room1_330")
        }
        specialread += 1
    }
}
if (room == room_water_undynehouse)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 4
    global.msc = 0
    if (x > 180)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_347")
        global.msg[1] = scr_gettext("obj_readable_room1_349")
        global.msg[2] = scr_gettext("obj_readable_room1_350")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room1_354")
    }
    else
    {
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_readable_room1_360")
        global.msg[1] = scr_gettext("obj_readable_room1_361")
        global.msg[2] = scr_gettext("obj_readable_room1_362")
    }
}
if (room == room_fire_spidershop)
{
    global.msg[0] = scr_gettext("obj_readable_room1_369")
    global.msg[1] = scr_gettext("obj_readable_room1_370")
}
if (room == room_fire_hotelfront_2)
    global.msg[0] = scr_gettext("obj_readable_room1_375")
if (room == room_fire_core_branch)
    global.msg[0] = scr_gettext("obj_readable_room1_380")
if (room == room_fire_core_left)
    global.msg[0] = scr_gettext("obj_readable_room1_385")
if (room == room_fire_core_top)
    global.msg[0] = scr_gettext("obj_readable_room1_390")
if (room == room_fire_core_right)
{
    global.msg[0] = scr_gettext("obj_readable_room1_395")
    global.msg[1] = scr_gettext("obj_readable_room1_396")
}
if (room == room_fire_core_center)
    global.msg[0] = scr_gettext("obj_readable_room1_401")
if (room == room_fire_core_treasureleft)
    global.msg[0] = scr_gettext("obj_readable_room1_406")
if (room == room_fire_core_metttest)
{
    global.msg[0] = scr_gettext("obj_readable_room1_416")
    if (FL_KilledMettaton == 0)
        global.msg[0] = scr_gettext("obj_readable_room1_419")
}
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_425")
    global.msg[1] = scr_gettext("obj_readable_room1_426")
    global.msg[2] = scr_gettext("obj_readable_room1_427")
    global.msg[3] = scr_gettext("obj_readable_room1_428")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_430")
}
if (room == room_truelab_hub)
{
    global.msg[0] = scr_gettext("obj_readable_room1_435")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_436")
}
if (room == room_truelab_hall2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_441")
    global.msg[1] = scr_gettext("obj_readable_room1_442")
    global.msg[2] = scr_gettext("obj_readable_room1_443")
    global.msg[3] = scr_gettext("obj_readable_room1_444")
    global.msg[4] = scr_gettext("obj_readable_room1_445")
    global.msg[5] = scr_gettext("obj_readable_room1_446")
    global.msg[6] = scr_gettext("obj_readable_room1_447")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_449")
}
if (room == room_truelab_operatingroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_454")
    global.msg[1] = scr_gettext("obj_readable_room1_455")
    global.msg[2] = scr_gettext("obj_readable_room1_456")
    global.msg[3] = scr_gettext("obj_readable_room1_457")
    global.msg[4] = scr_gettext("obj_readable_room1_458")
    global.msg[5] = scr_gettext("obj_readable_room1_459")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_462")
}
if (room == room_truelab_prebed)
{
    global.msg[0] = scr_gettext("obj_readable_room1_467")
    global.msg[1] = scr_gettext("obj_readable_room1_468")
    global.msg[2] = scr_gettext("obj_readable_room1_469")
    global.msg[3] = scr_gettext("obj_readable_room1_470")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_471")
}
if (room == room_truelab_bedroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_476")
    global.msg[1] = scr_gettext("obj_readable_room1_477")
    global.msg[2] = scr_gettext("obj_readable_room1_478")
    global.msg[3] = scr_gettext("obj_readable_room1_479")
    global.msg[4] = scr_gettext("obj_readable_room1_480")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_481")
}
if (room == room_truelab_mirror)
{
    global.msg[0] = scr_gettext("obj_readable_room1_486")
    global.msg[1] = scr_gettext("obj_readable_room1_487")
    global.msg[2] = scr_gettext("obj_readable_room1_488")
    global.msg[3] = scr_gettext("obj_readable_room1_489")
    global.msg[4] = scr_gettext("obj_readable_room1_490")
    global.msg[5] = scr_gettext("obj_readable_room1_491")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_492")
}
if (room == room_truelab_hall3)
{
    global.msg[0] = scr_gettext("obj_readable_room1_497")
    global.msg[1] = scr_gettext("obj_readable_room1_498")
    global.msg[2] = scr_gettext("obj_readable_room1_499")
    global.msg[3] = scr_gettext("obj_readable_room1_500")
    global.msg[4] = scr_gettext("obj_readable_room1_501")
    global.msg[5] = scr_gettext("obj_readable_room1_502")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_503")
}
if (room == room_truelab_determination)
{
    global.msg[0] = scr_gettext("obj_readable_room1_517")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_518")
}
if (room == room_truelab_tv)
{
    global.msg[0] = scr_gettext("obj_readable_room1_523")
    global.msg[1] = scr_gettext("obj_readable_room1_524")
    global.msg[2] = scr_gettext("obj_readable_room1_525")
    global.msg[3] = scr_gettext("obj_readable_room1_526")
    global.msg[4] = scr_gettext("obj_readable_room1_527")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_528")
}
if (room == room_truelab_fan)
    global.msc = 780
if (room == room_truelab_cooler)
{
    global.msg[0] = scr_gettext("obj_readable_room1_538")
    global.msg[1] = scr_gettext("obj_readable_room1_539")
    global.msg[2] = scr_gettext("obj_readable_room1_540")
    global.msg[3] = scr_gettext("obj_readable_room1_541")
    if (FL_PowerSwitchAmalgamEvent == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_542")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_readable_room1_543")
}
if (room == room_truelab_prepower)
{
    global.msg[0] = scr_gettext("obj_readable_room1_548")
    if (FL_PowerSwitchAmalgamEvent == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_551")
        global.msg[1] = scr_gettext("obj_readable_room1_552")
        global.msg[2] = scr_gettext("obj_readable_room1_553")
        global.msg[3] = scr_gettext("obj_readable_room1_554")
        global.msg[4] = scr_gettext("obj_readable_room1_555")
        global.msg[5] = scr_gettext("obj_readable_room1_556")
        global.msg[6] = scr_gettext("obj_readable_room1_557")
        global.msg[7] = scr_gettext("obj_readable_room1_558")
        global.msg[8] = scr_gettext("obj_readable_room1_559")
    }
}
if (room == room_truelab_elevatorinside)
    global.msg[0] = scr_gettext("obj_readable_room1_565")
if (room == room_castle_elevatorout)
    global.msg[0] = scr_gettext("obj_readable_room1_570")
if (room == room_truelab_castle_elevator)
    global.msg[0] = scr_gettext("obj_readable_room1_575")
if (room == room_tundra_grillby)
    global.msg[0] = scr_gettext("obj_readable_room1_580")
if (room == room_water_blookyard)
    global.msg[0] = scr_gettext("obj_readable_room1_585")
if (room == room_tundra_sansroom)
    global.msg[0] = scr_gettext("obj_readable_room1_590")
if (room == room_tundra_sansbasement)
{
    global.msg[0] = scr_gettext("obj_readable_room1_595")
    global.msg[1] = scr_gettext("obj_readable_room1_596")
    global.msg[2] = scr_gettext("obj_readable_room1_597")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_602")
        global.msg[1] = scr_gettext("obj_readable_room1_603")
        global.msg[2] = scr_gettext("obj_readable_room1_604")
        global.msg[3] = scr_gettext("obj_readable_room1_605")
    }
    if (FL_InteractedWithClamgirl == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_610")
        global.msg[1] = scr_gettext("obj_readable_room1_611")
        global.msg[2] = scr_gettext("obj_readable_room1_612")
        global.msg[3] = scr_gettext("obj_readable_room1_613")
        global.msg[4] = scr_gettext("obj_readable_room1_614")
    }
}
if (room == room_fire_pacing)
{
    global.msg[0] = scr_gettext("obj_readable_room1_621")
    global.msg[1] = scr_gettext("obj_readable_room1_622")
    global.msg[2] = scr_gettext("obj_readable_room1_623")
}
if (room == room_fire_hoteldoors)
    global.msg[0] = scr_gettext("obj_readable_room1_628")
if (room == room_fire_hotellobby)
{
    global.msg[0] = scr_gettext("obj_readable_room1_633")
    global.msg[1] = scr_gettext("obj_readable_room1_634")
}
if (room == room_fire_restaurant)
{
    global.msg[0] = scr_gettext("obj_readable_room1_639")
    global.msg[1] = scr_gettext("obj_readable_room1_640")
    global.msg[2] = scr_gettext("obj_readable_room1_641")
}
if (room == room_fire_hotelbed)
{
    global.msg[0] = scr_gettext("obj_readable_room1_646")
    global.msg[1] = scr_gettext("obj_readable_room1_647")
}
if (room == room_water_temvillage)
    global.msg[0] = scr_gettext("obj_readable_room1_652")
read += 1
if (cantalk == 1)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
