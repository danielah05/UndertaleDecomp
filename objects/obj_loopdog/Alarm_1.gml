image_xscale = -1
x = (global.idealborder[0] - sprite_width)
y = ((global.idealborder[3] - sprite_height) - 36)
alarm[0] = 10
visible = true
if (scr_monstersum() == 1)
{
    alarm[0] = 60
    alarm[2] = 60
    global.turntimer = 170
}
