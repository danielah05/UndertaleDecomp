parent.graze += 1
pop = scr_monstersum()
if (pop > 1)
    parent.graze += 0.5
if (parent.graze < 4)
    snd_play(snd_bell)
if (parent.graze > 3)
    parent.mercymod = 30
if (parent.graze >= 4)
{
    parent.mercymod = 100
    global.monsterdef[parent.myself] = -99
    snd_play(snd_dumbvictory)
}
instance_destroy()
