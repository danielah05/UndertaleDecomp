if (scr_murderlv() >= 8)
    FL_OnionSanConvoCounter = -1
FL_AnimationIndex = 0
onion = instance_create(100, 62, obj_onionbody)
tents = 0
con = 0
once = 0
if (FL_OnionSanConvoCounter >= 1 && FL_OnionSanConvoCounter <= 7)
    con = 7
