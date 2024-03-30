if instance_exists(obj_tembody)
    obj_tembody.atk = 1
i = 0
repeat (10)
{
    temdir[i] = 0
    temtim[i] = 0
    temx1[i] = 0
    temx2[i] = 0
    temy1[i] = 0
    temy2[i] = 0
    i += 1
}
speed = 4
temx1[0] = x
temx2[0] = (x + 9)
temy1[0] = y
temy[0] = (y + 9)
temdir[0] = 270
direction = temdir[0]
alarm[0] = (20 + random(20))
temtim[0] = 90
temno = 0
turned = 0
reversal = 0
