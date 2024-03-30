if (floor((msgnum / 100)) == 1)
    global.typer = 32
else if (floor((msgnum / 100)) == 3)
    global.typer = 110
else
    global.typer = 30
var msgid_base = (("obj_heartdefeated_" + string(msgnum)) + "_")
var i = 0
while 1
{
    var text = scr_gettext((msgid_base + string(i)))
    if (text == "")
        break
    else
    {
        global.msg[i] = text
        i++
        continue
    }
}
dingus = 1
SCR_TEXTTYPE(global.typer)
global.msc = 0
var xx = 100
if (global.language == "ja")
    xx = 88
instance_create(xx, 300, OBJ_WRITER)
