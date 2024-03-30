sprite_index = global.monstersprite
line = 0
finished = false
linefriended = 0
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor = global.vaporspeed
if (myvapor == 0)
    snd_play(snd_vaporized)
fileplace = ("data/monster/" + string(global.monstersprite))
file = ossafe_file_text_open_read(fileplace)
action_set_alarm(2, 0)
