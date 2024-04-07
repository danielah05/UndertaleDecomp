with (ruff)
    instance_destroy()
with (obj_toroverworld3)
    visible = true
conversation = 5
global.faceemotion = 1
obj_mainchara.visible = true
global.msg[0] = scr_gettext("obj_torieltrigger7_77")
obj_toroverworld3.phone = 0
obj_toroverworld3.usprite = spr_toriel_u
instance_create(0, 0, obj_dialoguer)
