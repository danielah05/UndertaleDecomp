col -= 1
pop = scr_monstersum()
first -= 1
if (first < 0)
{
    turnamt = 0.3
    if (zap == 1)
        turnamt = 0.6
    if (zap == 1 && pop > 1)
        turnamt = 0.5
}
else
    turnamt = 0.2
newdir = point_direction(x, y, obj_heart.x, obj_heart.y)
hspeed += lengthdir_x(turnamt, newdir)
vspeed += lengthdir_y(turnamt, newdir)
if (zap == 0)
{
    if (speed > 6)
        speed = 6
}
if (zap == 1)
{
    if (speed > 7)
        speed = 7
    if (pop > 1)
    {
        if (speed > 6)
            speed = 6
    }
}
if (zap == 2)
{
    if (speed > 7)
        speed = 7
}
if (x > (global.idealborder[1] + 6))
    x = (global.idealborder[0] - 15)
if (x < (global.idealborder[0] - 20))
    x = (global.idealborder[1] + 2)
if (y > (global.idealborder[3] + 6))
    y = (global.idealborder[2] - 15)
if (y < (global.idealborder[2] - 20))
    y = (global.idealborder[3] + 2)
if (king == obj_musicobjectparent && zap == 0)
{
    if (obj_heart.x == obj_heart.xprevious && obj_heart.y == obj_heart.yprevious)
    {
        global.turntimer += 1
        time += 1
        if (time > 450 && heal == 0)
        {
            obj_monsterparent.mercymod = 400
            snd_play(snd_select)
            object_index.sprite_index = spr_wizard_orb3
            object_index.heal = 1
            caster_pause(-3)
        }
    }
    else if (heal == 1)
    {
        snd_play(snd_power)
        if (global.hp < global.maxhp)
        {
            global.hp += 1
            if (global.hp > global.maxhp)
                global.hp = global.maxhp
        }
        if (FL_UnusedMadjickSoundHandle != 0)
            caster_free(FL_UnusedMadjickSoundHandle)
        caster_resume(all)
        global.turntimer = -1
        global.mnfight = 3
        global.myfight = -1
        with (object_index)
            instance_destroy()
    }
}
