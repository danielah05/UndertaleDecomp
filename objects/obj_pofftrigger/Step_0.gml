if (t == 2)
{
    obj_dogpoff.image_speed = 0.25
    t = 3
}
if (t == 6)
{
    global.battlegroup = BattleGroup.GreaterDog
    FL_AreaKillsPointer = KillsPointer_Invalid
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    t = 10
}
if (global.plot == 60 && t == 10)
{
    obj_mainchara.y = 140
    global.interact = 1
    global.plot = 61
    if (FL_GreaterDogStatus == DogStatus.Killed)
    {
        global.mercy = 0
        global.interact = 0
        global.plot = 65
        global.currentsong = caster_load("music/snowy.ogg")
        caster_loop(global.currentsong, 1, 0.95)
		// Daniela: fix music not being pitched down in Genocide
		if (!global.decomp_vars.VanillaMode && murder == 1)
			caster_set_pitch(global.currentsong, 0.4);
        t = 9999
        with (obj_dogpoff)
            instance_destroy()
        instance_destroy()
        return;
    }
    alarm[4] = 30
    if (FL_GreaterDogStatus == DogStatus.Spared || FL_GreaterDogStatus == DogStatus.SparedWithStick)
        t = 20
    if (FL_GreaterDogStatus == DogStatus.Ignored)
        t = 26
}
if (t == 20 || t == 26)
    global.interact = 1
if (t == 21)
{
    obj_dogpoff.image_index = 0
    obj_dogpoff.sprite_index = spr_doglick
    obj_dogpoff.image_speed = 0.25
    t = 22
}
if (t == 23 && obj_dogpoff.sprite_index == spr_dogbuttwalk)
{
    obj_dogpoff.hspeed = 2
    obj_dogpoff.image_speed = 0.25
    alarm[4] = 50
    t = 24
}
if (t == 25)
{
    global.mercy = 0
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    global.interact = 0
    global.plot = 65
    instance_destroy()
}
if (t == 27)
{
    obj_dogpoff.image_index = 0
    obj_dogpoff.sprite_index = spr_dogboredwalk
    obj_dogpoff.hspeed = 2
    obj_dogpoff.image_speed = 0.5
    alarm[4] = 50
    t = 28
}
if (t == 29)
    t = 25
