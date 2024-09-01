instance_create(0, 0, obj_fader)
global.faceemotion = 0
global.facechoice = 0
face_speed = 0.2
face_index = 0
cn = -2
alarm[2] = 15
global.inbattle = true
joke = 0
choice = 0
choicer = 0
global.border = 11
SCR_BORDERSETUP()
instance_create(0, 0, obj_uborder)
instance_create(0, 0, obj_dborder)
instance_create(0, 0, obj_lborder)
instance_create(0, 0, obj_rborder)
datemusic = caster_load("music/date.ogg")
datefight = caster_load("music/date_fight.ogg")
datetense = caster_load("music/date_tense.ogg")
datevolume = 1
sha = 0
haty = 0
blcon = 5475834
present = 0
graph = 4384134
friendgraph = instance_create(256, -64, obj_friendgraph)
if (global.decomp_vars.VanillaMode)
{
	if (global.osflavor == OSFlavors.Playstation || global.osflavor == OSFlavors.Switch || global.osflavor == OSFlavors.XboxOne)
		FL_PapyrusSinkEventOccured = 1
}
else
{
	var platformMatch = (global.osflavor == OSFlavors.Playstation || global.osflavor == OSFlavors.Switch || global.osflavor == OSFlavors.XboxOne);
	var settingsMatch = global.decomp_vars.EnablePSDogShrine || global.decomp_vars.EnableSwitchDogShrine || global.decomp_vars.EnableXboxDogShrine;
	
	if (platformMatch || settingsMatch)
		FL_PapyrusSinkEventOccured = 1
}
textskip = 1
