global.currentroom = room
instance_create(0, 0, obj_fader)
if (room == room_area1_2)
{
	room_goto(room_floweybattle)
	room_persistent = true
}
if (room == room_tundra_paproom)
	room_goto(room_papdate)
if instance_exists(obj_alabdoor_l)
	room_goto(room_adate)
