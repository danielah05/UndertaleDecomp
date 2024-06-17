SCR_BORDERSETUP(0, 0, 0, 0, 0)
scr_battlegroup(0, 0, 0, 0, 0)
global.mercyuse = -1
global.inbattle = true
global.itemused = 0
FL_FightingSans = false
runaway = 0
global.msg[4] = global.msg[0]
if (global.actfirst == 0 && global.extraintro == 0)
{
    global.myfight = 0
    global.mnfight = 0
    global.typer = 1
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
}
global.turn = 0
global.turntimer = -1
won = 0
global.heard = 0
global.tmsg = "%%%"
if (global.lv > 20)
    global.lv = 20
global.maxhp = (16 + (global.lv * 4))
if (global.hp > (global.maxhp + 15))
    global.hp = (global.maxhp + 15)
global.at = (8 + (global.lv * 2))
global.df = (9 + ceil((global.lv / 4)))
if (global.lv == 20)
{
    global.at = 30
    global.df = 30
    global.maxhp = 99
}
tempat = global.at
tempdf = global.df
tempspd = global.sp
active = false
alarm[0] = 3
healed = 0
drawrect = 1
drawbinfo = 1
rearrange = 0
suppress_border = 0
if global.screen_border_active
{
    if (global.battlegroup == BattleGroup.AsgoreIntro || global.battlegroup == BattleGroup.Asgore || global.battlegroup == BattleGroup.Asriel || global.battlegroup == BattleGroup.AsrielFinal)
    {
        suppress_border = 1
        scr_enable_screen_border(false)
    }
}
