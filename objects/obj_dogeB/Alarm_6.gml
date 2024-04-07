blcon = instance_create(((x + sprite_width) - 8), (ystart + 8), obj_blconsm)
mycommand = round(random(100))
if (global.turn == 0)
    mycommand = 10
if (global.turn == 1)
    mycommand = 90
if (mycommand >= 0 && mycommand < 33)
    global.msg[0] = "You're&rather&slow."
if (mycommand >= 33 && mycommand < 66)
    global.msg[0] = "Come on,&let's go."
if (mycommand >= 66 && mycommand <= 100)
    global.msg[0] = "Hurry&up..."
if (global.turn == 3)
    global.msg[0] = "Want to&go on&a walk?"
if (whatiheard == 2 && mercymod == 21)
    global.msg[0] = "Pet...&me..."
if (whatiheard == 2 && mercymod == 20)
{
    global.msg[0] = "Oh boy!&Oh boy!&Oh boy!&Oh boy!"
    mercymod = 21
}
if (whatiheard == 5 && mercymod == 100)
{
    global.msg[0] = "Ahhhh,&humans&are&nice."
    global.monsterdef[myself] = -30
}
if (mercymod == 102)
{
    mercymod = 103
    global.msg[0] = "Hey!!&That&was&fun!!"
}
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
