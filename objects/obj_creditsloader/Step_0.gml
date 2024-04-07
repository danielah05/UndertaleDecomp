if do_room_goto
{
    do_room_goto = false
    if (FL_FinalTorielChoice == Choices.Stayed)
        room_goto(room_end_myroom)
    else
        room_goto(room_end_theend)
}
