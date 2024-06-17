if (con == 3)
{
    global.entrance = 1
    global.facing = Direction.Right
    global.phone[0] = PhoneName.Null
    global.phone[1] = PhoneName.Null
    global.phone[2] = PhoneName.Null
    global.phone[3] = PhoneName.Null
    global.phone[4] = PhoneName.Null
    global.phone[5] = PhoneName.Null
    global.phone[6] = PhoneName.Null
    global.phone[7] = PhoneName.Null
    global.phone[0] = PhoneName.TorielsPhone
    instance_create(0, 0, obj_persistentfader)
    scr_enable_screen_border(true)
    room_goto(room_tundra1)
}
