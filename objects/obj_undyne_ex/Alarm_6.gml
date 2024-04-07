blcontype = 0
uncancel = 0
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand > 50 && obj_heart.sprite_index != spr_heartgreen)
    borderspec = 1
else
    borderspec = 0
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
if (obj_heart.sprite_index == spr_heartgreen)
{
    global.border = 13
    obj_heart.x = ((room_width / 2) - 8)
    obj_heart.y = (obj_uborder.y + 34)
    greenlock = 1
}
else
{
    obj_heart.x = ((room_width / 2) - 8)
    obj_heart.y = (obj_uborder.y + 34)
    global.border = 31
    if (orderb == 0 || orderb == 6)
        global.border = 7
    if (orderb == 1 || orderb == 7)
        global.border = 14
}
damagecause = 0
