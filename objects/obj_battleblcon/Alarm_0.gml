FL_SparedLast = false
FL_EscapedLast = false
FL_KilledLast = false
FL_BoredLast = false
global.entrance = 0
obj_mainchara.depth = -600
battle = 1
if (room == room_asghouse1)
    battle = 2
if (room == room_asghouse2)
    battle = 2
if (room == room_asghouse3)
    battle = 2
if (room == room_kitchen_final)
    battle = 2
if (battle == 1)
{
    if (instance_exists(obj_battler) == false)
        instance_create(0, 0, obj_battler)
}
if (battle == 2)
{
    if (instance_exists(obj_battlerstory) == false)
        instance_create(0, 0, obj_battlerstory)
}
instance_destroy()
