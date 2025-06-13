if (ok == 0 && FL_PlayRainSound == true)
{
	FL_RainSoundVolume -= 0.02
	FL_RainDeepVolume -= 0.02
	if (FL_RainSoundVolume < 0)
		FL_RainSoundVolume = 0
	if (FL_RainDeepVolume < 0)
		FL_RainDeepVolume = 0
	caster_set_volume(FL_RainSoundHandle, FL_RainSoundVolume)
	caster_set_volume(FL_RainDeepSoundHandle, FL_RainDeepVolume)
	if (FL_RainSoundVolume < 0.1 && FL_RainDeepVolume < 0.1)
	{
		FL_PlayRainSound = false
		caster_free(FL_RainSoundHandle)
		caster_free(FL_RainDeepSoundHandle)
		FL_RainSoundHandle = -1
		FL_RainDeepSoundHandle = -1
		instance_destroy()
	}
}
if ((FL_PlayRainSound == true && room == room_water_prewaterfall) || room == room_water_waterfall3 || room == room_water_statue || room == room_water_preundyne)
{
	if (FL_RainSoundVolume > 0.08)
		FL_RainSoundVolume -= 0.02
	if (FL_RainDeepVolume < 0.5)
		FL_RainDeepVolume += 0.02
	caster_set_volume(FL_RainSoundHandle, FL_RainSoundVolume)
	caster_set_volume(FL_RainDeepSoundHandle, FL_RainDeepVolume)
}
if ((FL_PlayRainSound == true && room == room_water_waterfall) || room == room_water_waterfall2 || room == room_water_waterfall4)
{
	if (FL_RainDeepVolume > 0.02)
		FL_RainDeepVolume -= 0.02
	if (FL_RainSoundVolume < 0.5)
		FL_RainSoundVolume += 0.02
	caster_set_volume(FL_RainSoundHandle, FL_RainSoundVolume)
	caster_set_volume(FL_RainDeepSoundHandle, FL_RainDeepVolume)
}
