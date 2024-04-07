function scr_monsterdefeat()
{
	if (killed == 1)
	{
	    global.xpreward[3] += global.xpreward[myself]
	    global.goldreward[3] += global.goldreward[myself]
	    global.vaporspeed = 0
	    global.monstersprite = sprite_index
	    ddd = instance_create(x, y, obj_vaporized_new)
	    if (object_index == obj_greatdog)
	    {
	        with (ddd)
	            scr_newvapordata(1)
	    }
	    if (object_index == obj_gyftrot)
	    {
	        with (ddd)
	            scr_newvapordata(2)
	    }
	    if (object_index == obj_icecap)
	    {
	        with (ddd)
	            scr_newvapordata(3)
	    }
	    if (object_index == obj_jerry)
	    {
	        with (ddd)
	            scr_newvapordata(4)
	    }
	    if (object_index == obj_lesserdoge)
	    {
	        with (ddd)
	            scr_newvapordata(5)
	    }
	    if (object_index == obj_mandog)
	    {
	        with (ddd)
	            scr_newvapordata(6)
	    }
	    if (object_index == obj_womandog)
	    {
	        with (ddd)
	            scr_newvapordata(7)
	    }
	    if (object_index == obj_movedoge)
	    {
	        with (ddd)
	            scr_newvapordata(8)
	    }
	    if (object_index == obj_papyrusdeadbody)
	    {
	        with (ddd)
	            scr_newvapordata(9)
	    }
	    if (object_index == obj_papyrusdeadhead)
	    {
	        with (ddd)
	            scr_newvapordata(10)
	    }
	    if (object_index == obj_shyren)
	    {
	        with (ddd)
	            scr_newvapordata(11)
	    }
	    if (object_index == obj_snowdrake || object_index == obj_chilldrake)
	    {
	        with (ddd)
	            scr_newvapordata(12)
	    }
	    if (object_index == obj_tembattle)
	    {
	        with (ddd)
	            scr_newvapordata(13)
	    }
	    if (object_index == obj_undyneb_body)
	    {
	        with (ddd)
	            scr_newvapordata(14)
	    }
	    if (object_index == obj_woshua)
	    {
	        with (ddd)
	            scr_newvapordata(15)
	    }
	    if (object_index == obj_froggit || object_index == obj_fakefroggit)
	    {
	        with (ddd)
	            scr_newvapordata(16)
	    }
	    if (object_index == obj_whimsun)
	    {
	        with (ddd)
	            scr_newvapordata(17)
	    }
	    if (object_index == obj_moldsmal)
	    {
	        with (ddd)
	            scr_newvapordata(18)
	    }
	    if (object_index == obj_migosp)
	    {
	        with (ddd)
	            scr_newvapordata(19)
	    }
	    if (object_index == obj_loox)
	    {
	        with (ddd)
	            scr_newvapordata(20)
	    }
	    if (object_index == obj_vegetoid)
	    {
	        with (ddd)
	            scr_newvapordata(21)
	    }
	    if (object_index == obj_torielboss)
	    {
	        with (ddd)
	            scr_newvapordata(22)
	    }
	    if (object_index == obj_dummymonster)
	    {
	        with (ddd)
	            scr_newvapordata(23)
	    }
	    if (object_index == obj_moldsmalx)
	    {
	        with (ddd)
	            scr_newvapordata(18)
	    }
	    if (object_index == obj_vulkin)
	    {
	        with (ddd)
	            scr_newvapordata(24)
	    }
	    if (object_index == obj_pyrope)
	    {
	        with (ddd)
	            scr_newvapordata(25)
	    }
	    if (object_index == obj_bara01)
	    {
	        with (ddd)
	            scr_newvapordata(26)
	    }
	    if (object_index == obj_bara02)
	    {
	        with (ddd)
	            scr_newvapordata(27)
	    }
	    if (object_index == obj_wizard)
	    {
	        with (ddd)
	            scr_newvapordata(28)
	    }
	    if (object_index == obj_finalknight)
	    {
	        with (ddd)
	            scr_newvapordata(29)
	    }
	    if (object_index == obj_finalfroggit)
	    {
	        with (ddd)
	            scr_newvapordata(30)
	    }
	    if (object_index == obj_whimsalot)
	    {
	        with (ddd)
	            scr_newvapordata(31)
	    }
	    if (object_index == obj_astigmatism)
	    {
	        with (ddd)
	            scr_newvapordata(32)
	    }
	    if (object_index == obj_spiderb)
	    {
	        with (ddd)
	            scr_newvapordata(33)
	    }
	    if (object_index == obj_migospel)
	    {
	        with (ddd)
	            scr_newvapordata(36)
	    }
	    if (object_index == obj_parsnik)
	    {
	        with (ddd)
	            scr_newvapordata(37)
	    }
	    if (object_index == obj_moldessa)
	    {
	        with (ddd)
	            scr_newvapordata(38)
	    }
	    if (object_index == obj_glydeb)
	    {
	        with (ddd)
	            scr_newvapordata(39)
	    }
	    if (object_index == obj_sosorry)
	    {
	        with (ddd)
	            scr_newvapordata(40)
	    }
	    if (object_index == obj_icecube)
	    {
	        with (ddd)
	            scr_newvapordata(41)
	    }
	    ddd.sprite_index = sprite_index
	    ddd.ht = ht
	    ddd.wd = wd
	    if (object_index == obj_snowdrake)
	        ddd.wd = 210
	    if (object_index == obj_chilldrake)
	        ddd.wd = 210
	    if (object_index == obj_dummymonster)
	        ddd.ht = 106
	    if (object_index == obj_moldsmal)
	        ddd.ht = 84
	    ddd.image_speed = 0
	    ddd.image_index = 1
	    global.kills += 1
	    global.areapop[global.area] -= 1
	    if (global.areapop[global.area] < 0)
	        global.areapop[global.area] = 0
	    FL_KilledLast = true
	}
	if (killed == 0)
	{
	    global.goldreward[3] += floor((global.goldreward[myself] * ((global.monstermaxhp[myself] - global.monsterhp[myself]) / global.monstermaxhp[myself])))
	    global.monstersprite = sprite_index
	    ddd = instance_create(x, y, obj_spared)
	    ddd.image_speed = 0
	    ddd.image_index = 1
	    FL_SparedLast = true
	    FL_SparedCount += 1
	}
	global.monster[myself] = false
}
