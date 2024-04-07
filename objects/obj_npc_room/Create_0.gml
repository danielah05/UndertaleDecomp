myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
if (room == room_kitchen_final)
    sprite_index = spr_trashcan_tint
if (room == room_water6)
    sprite_index = spr_telescope
if (room == room_water5A)
    sprite_index = spr_bench
if (room == room_water3A)
{
    sprite_index = spr_tutu
    if (FL_GotTutu == true)
        instance_destroy()
}
if (room == room_water_savepoint1)
    sprite_index = spr_crystaltable
if (room == room_water_shoe)
{
    sprite_index = spr_balletshoes
    visible = false
    if (FL_GotBalletShoes == true)
        instance_destroy()
}
if (room == room_tundra_sanshouse)
    sprite_index = spr_signsock
if (room == room_water_undyneyard)
{
    sprite_index = spr_dummy
    if (FL_KilledGladDummy == true)
        instance_destroy()
    if (FL_MadMewMewStatus >= MadMewMewStatus.DoorOpened)
    {
        if (FL_TruePacifist == true)
            instance_create(x, y, obj_sign_room)
        instance_destroy()
    }
}
if (room == room_water_farm)
{
    sprite_index = spr_snailr
    if (scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_water7 && global.plot < 110)
    instance_destroy()
if (room == room_water11)
{
    sprite_index = spr_tonsildude
    if (scr_murderlv() >= 8)
        instance_destroy()
    y += 10
}
if (room == room_fire8)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    sprite_index = spr_skateboardgirl
    if (id == instance_find(object_index, 1))
        sprite_index = spr_fukufire
}
if (room == room_fire9)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    sprite_index = spr_businessdude
    if (id == instance_find(object_index, 1))
        sprite_index = spr_firecoffee
}
if (room == room_fire6A)
{
    sprite_index = spr_frypan
    if (FL_GotFryingPan == true)
        instance_destroy()
}
if (room == room_fire_apron)
{
    sprite_index = spr_apron
    if (FL_GotApron == true)
        instance_destroy()
}
if (room == room_water_nicecream)
{
    sprite_index = spr_chestbox
    x += 10
    y += 20
}
if (room == room_fire_walkandbranch)
{
    if (FL_TruePacifist == false || FL_SoSorryStatus < SoSorryStatus.Spared)
        instance_destroy()
    sprite_index = spr_sorry_npc_d
}
if (room == room_fire_core_treasureleft || room == room_fire_core_treasureright)
    sprite_index = spr_trashcan
if (room == room_castle_exit)
{
    q = 0
    ossafe_ini_open("undertale.ini")
    fcheck1 = ini_read_real("Flowey", "K", 0)
    fcheck2 = ini_read_real("FFFFF", "E", 0)
    ossafe_ini_close()
    if (FL_KilledFlowey == true)
        q = 1
    if (fcheck1 == 1 && fcheck2 == 2)
        q = 1
    if (q == 1)
        sprite_index = spr_flowey_empty
    else
        instance_destroy()
}
if (room == room_fire_prelab)
{
    if (y < 70)
    {
        if (scr_murderlv() >= 12)
            instance_destroy()
        sprite_index = spr_royalguard_dragon_d
        if (global.plot >= 136)
            instance_destroy()
    }
}
if (room == room_asgoreroom)
    sprite_index = spr_trophy
if (room == room_asrielroom_final)
    sprite_index = spr_presentbox
if (room == room_truelab_bedroom)
{
    image_blend = c_gray
    sprite_index = spr_dogbowl_empty
}
if (room == room_fire_mewmew2)
    sprite_index = spr_microwave
if (room == room_fire_spidershop)
{
    sprite_index = spr_donutscaredguy
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_tundra_sansroom)
{
    sprite_index = spr_treadmill
    tread = scr_marker(x, y, spr_treadmill)
    with (tread)
    {
        scr_depth()
        image_speed = 0.2
    }
    visible = false
}
if (room == room_water2)
{
    sprite_index = spr_fishnpc_echo
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_tundra4)
    sprite_index = spr_amalgam_fridgenpc
if (room == room_water_blookyard)
    sprite_index = spr_mettex_npc
if (room == room_ice_dog)
    sprite_index = spr_videogame
if (room == room_fire_restaurant)
{
    if (x > 500)
        sprite_index = spr_npc_oni
    if (x > 600)
        sprite_index = spr_npc_charles
    if (x > 780)
        sprite_index = spr_hotel_receptionist2
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_pacing)
{
    sprite_index = spr_dresslion_a
    if (FL_TruePacifist == true)
        sprite_index = spr_dresslion_b
    if (scr_murderlv() >= 12)
        instance_destroy()
    if (global.plot < 167)
        instance_destroy()
}
if (room == room_fire_hotellobby)
{
    sprite_index = spr_diamond_recep
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hotdog)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
        instance_destroy()
    sprite_index = spr_vulkinnpc_hotdog
    if (x > 160)
        sprite_index = spr_hotdog_harpy
}
if (room == room_water_temvillage)
{
    sprite_index = spr_temmie_egg
    if (scr_murderlv() >= 10)
        instance_destroy()
}
if (room == room_water_trashzone1)
{
    sprite_index = spr_ds_donationbox_trash
	if ((global.osflavor != OSFlavors.Playstation && global.osflavor != OSFlavors.Switch) || scr_murderlv() < 9)
		instance_destroy()
}
