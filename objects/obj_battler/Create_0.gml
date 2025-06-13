global.interact = 3
alarm[2] = 30
alarm[4] = 1
FL_KillsCounter = global.kills
heartdraw = false
on = false
clap = 0
depp = -600
claptimer = 2
if (FL_InBattle == false)
{
	caster_set_volume(global.currentsong, 0)
	caster_pause(global.currentsong)
}
tb = instance_create(0, 0, obj_tempblack)
