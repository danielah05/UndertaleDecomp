if (obj_mainchara.x > x)
    obj_mainchara.x += hspeed
if (obj_mainchara.x < x)
    obj_mainchara.x += hspeed
if (obj_mainchara.bbox_top < bbox_bottom && obj_mainchara.bbox_bottom > bbox_bottom)
    obj_mainchara.y += vspeed
if (obj_mainchara.bbox_bottom > bbox_top && obj_mainchara.bbox_top < bbox_top)
    obj_mainchara.y += vspeed
obj_playmovement.touch += 1
