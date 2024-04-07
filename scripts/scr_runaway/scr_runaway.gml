function scr_runaway()
{
	if (FL_Hardmode == false)
	    runvalue = (random(100) + (10 * global.turn))
	else
	{
	    if (global.turn == 0)
	        runvalue = 0
	    if (global.turn >= 1)
	        runvalue = (random(100) + (10 * (global.turn - 1)))
	}
	if instance_exists(obj_undyneboss)
	    runvalue = 100
	if (FL_Hardmode == false)
	{
	    if (global.armor == Items.Bandage)
	        runvalue = 100
	}
	if (runvalue > 50)
	{
	    runaway = 1
	    snd_play(snd_escaped)
	    obj_heart.hspeed = -3
	    obj_heart.sprite_index = spr_heartgtfo
	    obj_heart.image_speed = 0.5
	    obj_writer_set_halt(3)
	    global.xp += global.xpreward[3]
	    global.gold += global.goldreward[3]
	    tlvl = global.lv
	    scr_levelup()
	    if (levelup == true)
	        snd_play(snd_levelup)
	    global.msc = 14
	    instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
	    FL_EscapedLast = true
	    FL_EscapedCount += 1
	}
}
