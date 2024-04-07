blcon = instance_create((x + 95), (y - 10), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (coherent == 1)
{
    global.msg[0] = scr_gettext("obj_memoryhead_166")
    if (mycommand < 75)
        global.msg[0] = scr_gettext("obj_memoryhead_167")
    if (mycommand < 50)
        global.msg[0] = scr_gettext("obj_memoryhead_168")
    if (mycommand < 25)
        global.msg[0] = scr_gettext("obj_memoryhead_169")
    if (turns == 0)
        global.msg[0] = scr_gettext("obj_memoryhead_171")
    turns += 1
}
if (whatiheard == 1)
{
    global.msg[0] = scr_gettext("obj_memoryhead_181")
    if (mycommand > 33)
        global.msg[0] = scr_gettext("obj_memoryhead_182")
    if (mycommand > 66)
        global.msg[0] = scr_gettext("obj_memoryhead_183")
}
if (whatiheard == 3)
{
    global.msg[0] = scr_gettext("obj_memoryhead_188")
    if (mycommand > 33)
        global.msg[0] = scr_gettext("obj_memoryhead_189")
    if (mycommand > 66)
        global.msg[0] = scr_gettext("obj_memoryhead_190")
}
global.msg[1] = scr_gettext("obj_memoryhead_195")
global.typer = 2
if (coherent == 1)
    blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
else
{
    sq = instance_create((blcon.x + 15), (blcon.y + 10), obj_insanesq)
    dd = floor(random(6))
	dnoise = caster_loop(ds[dd], 0.3, (0.9 + random(0.2)))
	caster_set_panning(dnoise, (0.1 + random(0.8)))
}
global.border = 5
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
