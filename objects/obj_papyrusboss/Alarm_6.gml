global.msc = 0
if (stalk == 0)
    blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
else
    blcon = sblcon
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_papyrusboss_548")
if (conversation == 0 && global.talked == 91)
    global.msg[0] = scr_gettext("obj_papyrusboss_552")
if (conversation == 0 && whatiheard == -1 && global.talked != 91 && murder == 0)
{
    talkify = 1
    alarm[5] = -1
    if (global.monsterhp[myself] < prevhp)
        global.msg[0] = scr_gettext("obj_papyrusboss_558")
    else
        global.msg[0] = scr_gettext("obj_papyrusboss_559")
    global.msg[1] = scr_gettext("obj_papyrusboss_560")
    global.msg[2] = scr_gettext("obj_papyrusboss_561")
    conversation = 1
    mycommand = -1
}
if (global.monsterhp[myself] <= 140 && fighto <= 14 && xfight < 4)
{
    fighto = 14
    xfight = 4
}
if (global.monsterhp[myself] <= 80 && fighto < 15)
{
    fighto = 15
    xfight = 0
}
if (truefight == 1)
{
    talkify = 0
    if (fighto == -1)
        global.msg[0] = scr_gettext("obj_papyrusboss_570")
    if (fighto == -1 && FL_PapyrusFightFlirt == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_571")
    if (fighto == 0)
        global.msg[0] = scr_gettext("obj_papyrusboss_572")
    if (fighto == 0 && FL_PapyrusFightFlirt == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_573")
    if (fighto == 0 && hearthp2 < hearthp && xxtalk == 0)
    {
        global.msg[0] = scr_gettext("obj_papyrusboss_574")
        fighto = -1
        xxtalk = 1
    }
    if (fighto == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_575")
    if (fighto == 1 && hearthp2 < hearthp && xxtalk < 2)
    {
        global.msg[0] = scr_gettext("obj_papyrusboss_576")
        fighto = 0
        xxtalk = 2
    }
    if (fighto == 2)
        global.msg[0] = scr_gettext("obj_papyrusboss_577")
    if (fighto == 3)
        global.msg[0] = scr_gettext("obj_papyrusboss_578")
    if (fighto == 4)
        global.msg[0] = scr_gettext("obj_papyrusboss_579")
    if (fighto == 5)
        global.msg[0] = scr_gettext("obj_papyrusboss_580")
    if (fighto == 6)
        global.msg[0] = scr_gettext("obj_papyrusboss_581")
    if (fighto == 7)
        global.msg[0] = scr_gettext("obj_papyrusboss_582")
    if (fighto == 8)
        global.msg[0] = scr_gettext("obj_papyrusboss_583")
    if (fighto == 9)
        global.msg[0] = scr_gettext("obj_papyrusboss_584")
    if (fighto == 9 && FL_PapyrusFightFlirt == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_585")
    if (fighto == 10)
        global.msg[0] = scr_gettext("obj_papyrusboss_586")
    if (fighto == 11)
        global.msg[0] = scr_gettext("obj_papyrusboss_587")
    if (fighto == 11 && FL_PapyrusFightFlirt == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_588")
    if (fighto == 12)
        global.msg[0] = scr_gettext("obj_papyrusboss_589")
    if (fighto == 13)
        global.msg[0] = scr_gettext("obj_papyrusboss_590")
    if (fighto == 14 && xfight == 0)
        global.msg[0] = scr_gettext("obj_papyrusboss_591")
    if (fighto == 14 && xfight == 1)
        global.msg[0] = scr_gettext("obj_papyrusboss_592")
    if (fighto == 14 && xfight == 2)
        global.msg[0] = scr_gettext("obj_papyrusboss_593")
    if (fighto == 14 && xfight > 2)
        global.msg[0] = scr_gettext("obj_papyrusboss_594")
    if (fighto == 14 && xfight > 3)
        global.msg[0] = scr_gettext("obj_papyrusboss_595")
    if (fighto == 15)
        global.msg[0] = scr_gettext("obj_papyrusboss_596")
}
if (whatiheard > -1 && fighto < 2)
{
    if (fighto < 0)
    {
        talkify = 0
        if (whatiheard == 0 && fighto < 2)
            global.msg[0] = scr_gettext("obj_papyrusboss_604")
        if (whatiheard == 1)
            global.msg[0] = scr_gettext("obj_papyrusboss_605")
        if (whatiheard == 1 && insult == 2)
            global.msg[0] = scr_gettext("obj_papyrusboss_606")
        if (whatiheard == 1 && insult > 2)
            global.msg[0] = scr_gettext("obj_papyrusboss_607")
        if (whatiheard == 6 || whatiheard == 7 || whatiheard == 3)
            global.msg[0] = scr_gettext("obj_papyrusboss_608")
    }
}
if (murder == 1)
    global.msg[0] = scr_gettext("obj_papyrusboss_612")
global.typer = 22
blconwd = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_WRITER)
global.border = 5
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
stalk = 0
