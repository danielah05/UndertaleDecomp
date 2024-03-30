if (obj_sansb_body.damageturn == 0)
{
    with (obj_sansb_body)
        event_user(2)
    if (global.hp < 1)
        global.hp = 1
}
