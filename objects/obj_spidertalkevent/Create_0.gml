image_yscale = 6
active = false
FL_AreaKillsPointer = KillsPointer_Hotland
if (FL_MuffetUnknown < 5 && global.tempvalue[11] > 0)
    FL_MuffetUnknown = 5
con = FL_MuffetUnknown
x += (FL_MuffetUnknown * 90)
pausewait = 0
pausewaittime = 0
if (global.plot > 164)
{
    instance_destroy()
    return;
}
murder = 0
if (scr_murderlv() >= 12)
    murder = 1
