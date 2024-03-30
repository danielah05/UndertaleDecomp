visible = true
y = (obj_mainchara.y + 3)
x = (obj_mainchara.x - 24)
if (global.entrance == 1)
    x = (obj_mainchara.x - 24)
if (global.entrance == 2)
    x = (obj_mainchara.x + 24)
rsprite = spr_mkid_r_shadow
lsprite = spr_mkid_l_shadow
usprite = spr_mkid_u_shadow
dsprite = spr_mkid_d_shadow
if (global.plot > 112)
    instance_destroy()
follow = 1
image_speed = 0
con = 0
speedup = 0
depth = obj_mainchara.depth
look = 0
