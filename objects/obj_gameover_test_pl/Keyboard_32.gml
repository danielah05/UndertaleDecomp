spaces += 1
if (spaces >= 50)
{
    i = 0
    repeat (99)
    {
        global.failure[i] = 0
        i += 1
    }
    global.attacktype = 30
    global.testhp = 20
    global.testinv = 0
    global.healno = 6
    room_goto(room_first)
}
