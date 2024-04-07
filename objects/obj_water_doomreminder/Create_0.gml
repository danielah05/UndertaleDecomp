image_xscale = 10
go = 0
if (scr_murderlv() == 10 && FL_SparedSpecific == 0 && global.plot < 120)
    go = 1
else
    instance_destroy()
con = 0
