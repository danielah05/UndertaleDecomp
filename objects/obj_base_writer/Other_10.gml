if (halt == 1)
{
    stringno++
    originalstring = scr_replace_buttons_pc(mystring[stringno])
    stringpos = 0
    halt = 0
    alarm[0] = textspeed
}
else if (halt == 2)
{
    control_clear(InteractButton)
    instance_destroy()
}
else if (halt == 4)
{
    global.myfight = 0
    global.mnfight = 1
    control_clear(InteractButton)
    instance_destroy()
}
