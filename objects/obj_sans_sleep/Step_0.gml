if (global.plot > 121)
    instance_destroy()
gone = 0
if (FL_SansDated2 > SansDated2.None)
    gone = 1
if (FL_PapyrusStatus == PapyrusStatus.Killed)
    gone = 1
if (gone == 1)
    instance_destroy()
