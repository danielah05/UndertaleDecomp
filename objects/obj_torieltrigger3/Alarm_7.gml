tor3 = instance_create(obj_torinteractable4.x, obj_torinteractable4.y, obj_toroverworld4)
with (obj_torinteractable4)
    instance_destroy()
with (tor3)
    direction = 270
global.msc = 212
global.typer = 4
global.facechoice = 1
global.interact = 1
instance_create(0, 0, obj_dialoguer)
conversation = 6
