image_xscale = 40
con = 0
if (global.plot == 121 && global.entrance == 1)
    save = instance_create(220, 660, obj_savepoint)
if (global.plot > 121)
    save = instance_create(220, 660, obj_savepoint)
if (global.entrance == 2)
    instance_destroy()
if (global.plot > 121)
    instance_destroy()
musout = 0
