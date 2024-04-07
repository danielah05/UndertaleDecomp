if (con == 3)
{
    global.entrance = 1
    global.facing = Direction.Right
    global.phone[0] = 0
    global.phone[1] = 0
    global.phone[2] = 0
    global.phone[3] = 0
    global.phone[4] = 0
    global.phone[5] = 0
    global.phone[6] = 0
    global.phone[7] = 0
    global.phone[0] = 206
    instance_create(0, 0, obj_persistentfader)
    scr_enable_screen_border(true)
    room_goto(room_tundra1)
}
