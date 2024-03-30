col = 0
counter = 0
type = 0
shake = 0
chooser = floor(random(15))
word = scr_gettext(("obj_6book_wordbullet_bad_" + string(chooser)))
word2 = scr_gettext(("obj_6book_wordbullet_good_" + string(chooser)))
if (x < 320)
    hspeed = 3.5
else
    hspeed = -3.5
if (obj_6book_master.con == 3)
    event_user(4)
