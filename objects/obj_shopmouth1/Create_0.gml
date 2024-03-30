image_speed = 0
if (room == room_shop1)
    x = (obj_shop1.shx + 27)
else
    instance_destroy()
y = 50
global.faceemotion = 0
an = 0
facespr[0] = spr_shopkeeper1_face0
facespr[1] = spr_shopkeeper1_face1
facespr[2] = spr_shopkeeper1_face2
facespr[3] = spr_shopkeeper1_face3
facespr[4] = spr_shopkeeper1_face4
facespr[5] = spr_shopkeeper1_face5
facespr[6] = spr_shopkeeper1_face6
if (scr_murderlv() >= 7)
    instance_destroy()
