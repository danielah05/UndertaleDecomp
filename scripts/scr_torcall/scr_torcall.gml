/// @func	scr_torcall()
/// @desc	Script used to grab Toriel phone call dialog depending on FL_TorielSMSConvoCounter.
function scr_torcall()
{
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	if (FL_TorielSMSConvoCounter == 0)
	{
	    global.msg[0] = scr_gettext("scr_torcall_7")
	    global.msg[1] = scr_gettext("scr_torcall_8")
	    global.msg[2] = scr_gettext("scr_torcall_9")
	    global.msg[3] = scr_gettext("scr_torcall_10")
	    global.msg[4] = scr_gettext("scr_torcall_11")
	    global.msg[5] = scr_gettext("scr_torcall_12")
	    global.msg[6] = scr_gettext("scr_torcall_13")
	    global.msg[7] = scr_gettext("scr_torcall_14")
	    global.msg[8] = scr_gettext("scr_torcall_15")
	    global.msg[9] = scr_gettext("scr_torcall_16")
	    global.msg[10] = scr_gettext("scr_torcall_17")
	}
	if (FL_TorielSMSConvoCounter == 1)
	{
	    global.msg[0] = scr_gettext("scr_torcall_22")
	    global.msg[1] = scr_gettext("scr_torcall_23")
	    global.msg[2] = scr_gettext("scr_torcall_24")
	    global.msg[3] = scr_gettext("scr_torcall_25")
	    global.msg[4] = scr_gettext("scr_torcall_26")
	    global.msg[5] = scr_gettext("scr_torcall_27")
	}
	if (FL_TorielSMSConvoCounter == 2)
	{
	    global.msg[0] = scr_gettext("scr_torcall_32")
	    global.msg[1] = scr_gettext("scr_torcall_33")
	    global.msg[2] = scr_gettext("scr_torcall_34")
	    global.msg[3] = scr_gettext("scr_torcall_35")
	}
	if (FL_TorielSMSConvoCounter == 3)
	    global.msg[0] = scr_gettext("scr_torcall_40")
	if (FL_TorielSMSConvoCounter == 4)
	{
	    global.msg[0] = scr_gettext("scr_torcall_45")
	    global.msg[1] = scr_gettext("scr_torcall_46")
	    global.msg[2] = scr_gettext("scr_torcall_47")
	    global.msg[3] = scr_gettext("scr_torcall_48")
	}
	if (FL_TorielSMSConvoCounter == 5)
	{
	    global.msg[0] = scr_gettext("scr_torcall_53")
	    global.msg[1] = scr_gettext("scr_torcall_54")
	}
	if (FL_TorielSMSConvoCounter == 6)
	{
	    global.msg[0] = scr_gettext("scr_torcall_59")
	    global.msg[1] = scr_gettext("scr_torcall_60")
	    global.msg[2] = scr_gettext("scr_torcall_61")
	}
	if (FL_TorielSMSConvoCounter == 7)
	{
	    global.msg[0] = scr_gettext("scr_torcall_66")
	    global.msg[1] = scr_gettext("scr_torcall_67")
	    global.msg[2] = scr_gettext("scr_torcall_68")
	    global.msg[3] = scr_gettext("scr_torcall_69")
	    global.msg[4] = scr_gettext("scr_torcall_70")
	}
	if (FL_TorielSMSConvoCounter == 8)
	{
	    global.msg[0] = scr_gettext("scr_torcall_75")
	    global.msg[1] = scr_gettext("scr_torcall_76")
	    global.msg[2] = scr_gettext("scr_torcall_77")
	}
	if (FL_TorielSMSConvoCounter == 9)
	{
	    global.msg[0] = scr_gettext("scr_torcall_82")
	    global.msg[1] = scr_gettext("scr_torcall_83")
	}
	if (FL_TorielSMSConvoCounter == 10)
	{
	    global.msg[0] = scr_gettext("scr_torcall_88")
	    global.msg[1] = scr_gettext("scr_torcall_89")
	    global.msg[2] = scr_gettext("scr_torcall_90")
	}
	if (FL_TorielSMSConvoCounter == 11)
	{
	    global.msg[0] = scr_gettext("scr_torcall_95")
	    global.msg[1] = scr_gettext("scr_torcall_96")
	    global.msg[2] = scr_gettext("scr_torcall_97")
	    global.msg[3] = scr_gettext("scr_torcall_98")
	}
	if (FL_TorielSMSConvoCounter == 12)
	{
	    global.msg[0] = scr_gettext("scr_torcall_103")
	    global.msg[1] = scr_gettext("scr_torcall_104")
	    global.msg[2] = scr_gettext("scr_torcall_105")
	    global.msg[3] = scr_gettext("scr_torcall_106")
	}
	if (FL_TorielSMSConvoCounter == 13)
	{
	    global.msg[0] = scr_gettext("scr_torcall_111")
	    global.msg[1] = scr_gettext("scr_torcall_112")
	    global.msg[2] = scr_gettext("scr_torcall_113")
	    global.msg[3] = scr_gettext("scr_torcall_114")
	    global.msg[4] = scr_gettext("scr_torcall_115")
	}
	if (FL_TorielSMSConvoCounter == 14)
	{
	    global.msg[0] = scr_gettext("scr_torcall_120")
	    global.msg[1] = scr_gettext("scr_torcall_121")
	    global.msg[2] = scr_gettext("scr_torcall_122")
	    global.msg[3] = scr_gettext("scr_torcall_123")
	}
	if (FL_TorielSMSConvoCounter == 15)
	{
	    global.msg[0] = scr_gettext("scr_torcall_128")
	    if (global.osflavor >= OSFlavors.Playstation)
	    {
	        global.msg[1] = scr_gettext("scr_torcall_129_console")
	        global.msg[2] = scr_gettext("scr_torcall_130_console")
	    }
	    else
	    {
	        global.msg[1] = scr_gettext("scr_torcall_129")
	        global.msg[2] = scr_gettext("scr_torcall_130")
	    }
	    global.msg[3] = scr_gettext("scr_torcall_131")
	}
	if (FL_TorielSMSConvoCounter == 16)
	{
	    global.msg[0] = scr_gettext("scr_torcall_136")
	    global.msg[1] = scr_gettext("scr_torcall_137")
	    global.msg[2] = scr_gettext("scr_torcall_138")
	    global.msg[3] = scr_gettext("scr_torcall_139")
	    global.msg[4] = scr_gettext("scr_torcall_140")
	    global.msg[5] = scr_gettext("scr_torcall_141")
	}
	if (FL_TorielSMSConvoCounter >= 17)
	    global.msg[0] = scr_gettext("scr_torcall_144")
	if (FL_TorielSMSConvoCounter == FL_SMSConvoParameters)
	    global.msg[0] = scr_gettext("scr_torcall_146")
	if (FL_TorielSMSConvoCounter < FL_SMSConvoParameters)
	    FL_TorielSMSConvoCounter += 1
}
