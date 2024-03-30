if (global.plot > 121)
    instance_destroy()
gone = 0
if (FL_SansDated2 > 0)
    gone = 1
if (FL_PapyrusStatus == PapyrusStatus.Killed)
    gone = 1
if (gone == 1)
    instance_destroy()
