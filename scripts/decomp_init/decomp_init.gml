global.decomp_vars = {
	VanillaMode : false,
	EnablePSDogShrine : true,
	EnableSwitchDogShrine : true,
	//EnableXboxDogShrine : true,
	EnablePS4Trophies : false,
	EnableCustomAchievements : false,
	DevConsoleEnabled : true,
	DemoHeartFracture : true,
	DemoHeartFractureDelay : 500,
	MasterVolume : 100.0,
	MusicVolume : 100.0,
	SoundFXVolume : 100.0,
	RestoreSFXPan : true,
	RemoveBattleIconRandomness : false,
	BattleIconRandomOverride : 0,
	FixInputLatency : true,
	WristProtector : true,
	ForceSoSorry : false
}

#macro trace show_debug_message
#macro waaah show_message

exception_unhandled_handler(crash_method);

global.monitorPlotVariable = false;
global.monitorFlags = []; // List of flags to monitor