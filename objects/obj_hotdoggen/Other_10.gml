hdno = 0
oncheck = 0
parent = obj_mainchara
while instance_position((parent.x + 10), (parent.y - (hdno * 4)), obj_hotdog)
    hdno += 1
hd = instance_create((parent.x + 10), (parent.y - (hdno * 4)), obj_hotdog)
hd.parent = obj_mainchara
hd.friction = (1 - (hdno * 0.1))
hd.relative = (hdno * 4)
if (negf == 0)
{
    if (hd.friction < 0.1)
        hd.friction = 0.1
}
