function scr_battlegroup()
{
	global.monster[0] = 0
	global.monster[1] = 0
	global.monster[2] = 0
	global.monster[3] = 0
	global.turn = 0
	switch global.battlegroup
	{
	    // Test Encounters
		
		// Triple Test Monster (Unused)
		case BattleGroup.TestFroggits:
	        global.monstertype[0] = MonsterType.TestFroggit
	        global.monstertype[1] = MonsterType.TestFroggit
	        global.monstertype[2] = MonsterType.TestFroggit
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 2
	        global.battlelv = 1
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_testmonster)
	        global.monsterinstance[1] = instance_create(418, 136, obj_testmonster)
	        global.monsterinstance[2] = instance_create(14, 136, obj_testmonster)
	        break
	    
		// Ruins Encounters
		
		// Ruins Dummy
		case BattleGroup.RuinsDummy:
	        global.monstertype[0] = MonsterType.Dummy
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_dummymonster)
	        break
	    
		// Froggit (Toriel Cutscene)
		case BattleGroup.TorielFroggit:
	        global.monstertype[0] = MonsterType.Tutorial_Froggit
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_fakefroggit)
	        break
	    
		// Froggit
		case BattleGroup.Froggit:
	        global.monstertype[0] = MonsterType.Froggit
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
	        break
	    
		// Whimsun
		case BattleGroup.Whimsun:
	        global.monstertype[0] = MonsterType.Whimsun
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(214, 16, obj_whimsun)
	        break
	    
		// Froggit, Whimsun
		case BattleGroup.FroggitWhimsun:
	        global.monstertype[0] = MonsterType.Froggit
	        global.monstertype[1] = MonsterType.Whimsun
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
	        global.monsterinstance[1] = instance_create(317, 16, obj_whimsun)
	        break
	    
		// Moldsmal
		case BattleGroup.Moldsmal:
	        global.monstertype[0] = MonsterType.Moldsmal_1
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 156, obj_moldsmal)
	        break
	    
		// Triple Moldsmal
		case BattleGroup.TripleMoldsmal:
	        global.monstertype[0] = MonsterType.Moldsmal_1
	        global.monstertype[1] = MonsterType.Moldsmal_1
	        global.monstertype[2] = MonsterType.Moldsmal_1
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msc = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_116")
	        global.monsterinstance[0] = instance_create(15, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(217, 156, obj_moldsmal)
	        global.monsterinstance[2] = instance_create(421, 156, obj_moldsmal)
	        break
	    
		// Double Froggit
		case BattleGroup.DoubleFroggit:
	        global.monstertype[0] = MonsterType.Froggit
	        global.monstertype[1] = MonsterType.Froggit
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_133")
	        global.monsterinstance[0] = instance_create(116, 136, obj_froggit)
	        global.monsterinstance[1] = instance_create(320, 136, obj_froggit)
	        break
	    
		// Double Moldsmal
		case BattleGroup.DoubleMoldsmal:
	        global.monstertype[0] = MonsterType.Moldsmal_1
	        global.monstertype[1] = MonsterType.Moldsmal_1
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_148")
	        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(320, 156, obj_moldsmal)
	        break
	    
		// Moldsmal, Migosp
		case BattleGroup.MoldsmalMigosp:
	        global.monstertype[0] = MonsterType.Moldsmal_1
	        global.monstertype[1] = MonsterType.Migosp
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_163")
	        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(320, 136, obj_migosp)
	        break
	    
		// Migosp, Vegetoid
		case BattleGroup.MigospVegetoid:
	        global.monstertype[0] = MonsterType.Migosp
	        global.monstertype[1] = MonsterType.Vegetoid
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_178")
	        global.monsterinstance[0] = instance_create(116, 136, obj_migosp)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Loox
		case BattleGroup.Loox:
	        global.monstertype[0] = MonsterType.Loox
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_193")
	        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
	        break
	    
		// Loox, Vegetoid (Unused)
		case BattleGroup.LooxVegetoid:
	        global.monstertype[0] = MonsterType.Loox
	        global.monstertype[1] = MonsterType.Vegetoid
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_207")
	        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Loox, Vegetoid, Migosp
		case BattleGroup.LooxVegetoidMigosp:
	        global.monstertype[0] = MonsterType.Loox
	        global.monstertype[1] = MonsterType.Vegetoid
	        global.monstertype[2] = MonsterType.Migosp
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_222")
	        global.monsterinstance[0] = instance_create(14, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(218, 136, obj_vegetoid)
	        global.monsterinstance[2] = instance_create(422, 136, obj_migosp)
	        break
	    
		// Double Vegetoid
		case BattleGroup.DoubleVegetoid:
	        global.monstertype[0] = MonsterType.Vegetoid
	        global.monstertype[1] = MonsterType.Vegetoid
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_238")
	        global.monsterinstance[0] = instance_create(116, 136, obj_vegetoid)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Double Loox
		case BattleGroup.DoubleLoox:
	        global.monstertype[0] = MonsterType.Loox
	        global.monstertype[1] = MonsterType.Loox
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_253")
	        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(320, 124, obj_loox)
	        break
	    
		// Vegetoid
		case BattleGroup.Vegetoid:
	        global.monstertype[0] = MonsterType.Vegetoid
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_268")
	        global.monsterinstance[0] = instance_create(218, 136, obj_vegetoid)
	        break
	    
		// But Nobody Came
		case BattleGroup.ButNobodyCame:
	        global.monstertype[0] = MonsterType.NotSet
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.3, 0.5)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 2
	        global.msg[2] = scr_gettext("scr_battlegroup_282")
	        break
	    
		// Napstablook
		case BattleGroup.Napstablook:
	        global.monstertype[0] = MonsterType.Napstablook
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/ghostbattle.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_297")
	        if (FL_Hardmode == true)
	            global.msg[0] = scr_gettext("scr_battlegroup_299")
	        global.monsterinstance[0] = instance_create(266, 106, obj_napstablook)
	        break
	    
		// Loox (Unused)
		case BattleGroup.LooxUnused:
	        global.monstertype[0] = MonsterType.Loox
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_193")
	        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
	        break
	    
		// Toriel
		case BattleGroup.Toriel:
	        global.monstertype[0] = MonsterType.Toriel
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/boss1.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_327")
	        global.monsterinstance[0] = instance_create(250, 42, obj_torielboss)
	        break
	    
		// Snowdin Encounters
		
		// Doggo
		case BattleGroup.Doggo:
	        global.monstertype[0] = MonsterType.Doggo
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_342")
	        global.monsterinstance[0] = instance_create(196, 28, obj_movedoge)
	        break
	    
		// Lesser Dog
		case BattleGroup.LesserDog:
	        global.monstertype[0] = MonsterType.LesserDog
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_357")
	        global.monsterinstance[0] = instance_create(216, 38, obj_lesserdoge)
	        break
	    
		// Dogamy, Dogaressa
		case BattleGroup.Dogi:
	        global.monstertype[0] = MonsterType.Dogamy
	        global.monstertype[1] = MonsterType.Dogaressa
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_371")
	        global.monsterinstance[0] = instance_create(208, 38, obj_mandog)
	        global.monsterinstance[1] = instance_create(208, 38, obj_womandog)
	        break
	    
		// Greater Dog
		case BattleGroup.GreaterDog:
	        global.monstertype[0] = MonsterType.GreaterDog
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/dogsong.ogg")
	        caster_loop(global.batmusic, 0.7, 0.95)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_386")
	        global.monsterinstance[0] = instance_create(208, 38, obj_greatdog)
	        break
	    
		// Papyrus (Boss)
		case BattleGroup.Papyrus:
	        global.monstertype[0] = MonsterType.Papyrus
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        if (FL_PapyrusStatus < PapyrusStatus.Spared)
	            global.batmusic = caster_load("music/papyrusboss.ogg")
	        else
	            global.batmusic = caster_load("music/papyrus.ogg")
	        if (scr_murderlv() < 7)
	        {
	            if (FL_PapyrusStatus < PapyrusStatus.Spared)
	                caster_loop(global.batmusic, 0.9, 1)
	            else
	                caster_loop(global.batmusic, 0.5, 1)
	        }
	        else
	            caster_loop(global.batmusic, 0, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_411")
	        if (scr_murderlv() >= 7)
	            global.msg[0] = scr_gettext("scr_battlegroup_413")
	        global.monsterinstance[0] = instance_create(250, 42, obj_papyrusboss)
	        break
	    
		// Gyftrot
		case BattleGroup.Gyftrot:
	        global.monstertype[0] = MonsterType.Gyftrot
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_429")
	        global.monsterinstance[0] = instance_create(208, 38, obj_gyftrot)
	        break
	    
		// Daniela: case 29 is missing, possibly commented out?
		
		// Chilldrake/Snowdrake
		case BattleGroup.Snowdrake:
	        global.monstertype[0] = MonsterType.Snowdrake
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_445")
	            global.monsterinstance[0] = instance_create(216, 38, obj_chilldrake)
	        }
	        else
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_450")
	            global.monsterinstance[0] = instance_create(216, 38, obj_snowdrake)
	        }
	        break
	    
		// Double Chilldrake (Unused)
		case BattleGroup.DoubleSnowdrake:
	        global.monstertype[0] = MonsterType.Snowdrake
	        global.monstertype[1] = MonsterType.Snowdrake
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_465")
	        global.monsterinstance[0] = instance_create(114, 38, obj_chilldrake)
	        global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
	        break
	    
		// Icecap
		case BattleGroup.Icecap:
	        global.monstertype[0] = MonsterType.IceCap
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_480")
	        global.monsterinstance[0] = instance_create(216, 38, obj_icecap)
	        break
	    
		// Icecap, Chilldrake/Snowdrake (Unused)
		case BattleGroup.IcecapSnowdrake:
	        global.monstertype[0] = MonsterType.IceCap
	        global.monstertype[1] = MonsterType.Snowdrake
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_497")
	            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
	            global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
	        }
	        else
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_503")
	            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
	            global.monsterinstance[1] = instance_create(318, 38, obj_snowdrake)
	        }
	        break
	    
		// Jerry (Unused)
		case BattleGroup.Jerry:
	        global.monstertype[0] = MonsterType.Jerry
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_519")
	        global.monsterinstance[0] = instance_create(216, 127, obj_jerry)
	        break
	    
		// Icecap, Jerry
		case BattleGroup.IcecapJerry:
	        global.monstertype[0] = MonsterType.IceCap
	        global.monstertype[1] = MonsterType.Jerry
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_533")
	        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
	        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
	        break
	    
		// Icecap, Jerry, Chilldrake/Snowdrake
		case BattleGroup.IcecapJerrySnowdrake:
	        global.monstertype[0] = MonsterType.IceCap
	        global.monstertype[1] = MonsterType.Jerry
	        global.monstertype[2] = MonsterType.Snowdrake
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	            global.msg[0] = scr_gettext("scr_battlegroup_549")
	        else
	            global.msg[0] = scr_gettext("scr_battlegroup_548")
	        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
	        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	            global.monsterinstance[2] = instance_create(388, 38, obj_chilldrake)
	        else
	            global.monsterinstance[2] = instance_create(388, 38, obj_snowdrake)
	        break
	    
		// Daniela: case 37-39 is missing.
		
		// Waterfall Encounters
		
		// Aaron
		case BattleGroup.Aaron:
	        global.monstertype[0] = MonsterType.Aaron
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_566")
	        global.monsterinstance[0] = instance_create(216, 38, obj_aaron)
	        break
	    
		// Temmie
		case BattleGroup.Temmie:
	        global.monstertype[0] = MonsterType.Temmie
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_581")
	        global.monsterinstance[0] = instance_create(216, 38, obj_tembattle)
	        break
	    
		// Moldsmal, Moldbygg
		case BattleGroup.MoldsmalMoldbygg:
	        global.monstertype[0] = MonsterType.Moldsmal_2
	        global.monstertype[1] = MonsterType.Moldbygg
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_596")
	        global.monsterinstance[0] = instance_create(114, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(316, 156, obj_moldsmalx)
	        break
	    
		// Woshua
		case BattleGroup.Woshua:
	        global.monstertype[0] = MonsterType.Woshua
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_612")
	        global.monsterinstance[0] = instance_create(114, 136, obj_woshua)
	        break
	    
		// Shyren
		case BattleGroup.Shyren:
	        global.monstertype[0] = MonsterType.Shyren
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_626")
	        global.monsterinstance[0] = instance_create(218, 36, obj_shyren)
	        break
	    
		// Mad Dummy
		case BattleGroup.MadDummy:
	        global.monstertype[0] = MonsterType.MadDummy
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/dummybattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_640")
	        global.monsterinstance[0] = instance_create(270, 80, obj_maddummy)
	        break
	    
		// Aaron, Woshua (Spooky Music Cutscene)
		case BattleGroup.AaronWoshuaCutscene:
	        global.monstertype[0] = MonsterType.Aaron
	        global.monstertype[1] = MonsterType.Woshua
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_640")
	        global.monsterinstance[0] = instance_create(114, 38, obj_aaron)
	        global.monsterinstance[1] = instance_create(318, 136, obj_woshua)
	        obj_woshbody.con = 1
	        obj_woshbody.alarm[4] = 80
	        break
	    
		// Undyne (Boss)
		case BattleGroup.Undyne:
	        global.monstertype[0] = MonsterType.Undyne
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/undyneboss.ogg")
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = " %%"
	        global.monsterinstance[0] = instance_create(210, 20, obj_undyneboss)
	        break
	    
		// Hotland Encounters
		
		// Mettaton Quiz
		case BattleGroup.MettatonQuiz:
	        global.monstertype[0] = MonsterType.Mettaton_Quiz
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_quiz)
	        instance_create(412, 126, obj_questionasker)
	        break
	    
		// Royal Guards
		case BattleGroup.RoyalGuards:
	        global.monstertype[0] = MonsterType.RG_01
	        global.monstertype[1] = MonsterType.RG_02
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_704")
	        global.monsterinstance[0] = instance_create(18, 34, obj_bara01)
	        global.monsterinstance[1] = instance_create(432, 34, obj_bara02)
	        break
	    
		// Tsunderplane
		case BattleGroup.Tsunderplane:
	        global.monstertype[0] = MonsterType.Tsunderplane
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_719")
	        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
	        break
	    
		// Vulkin
		case BattleGroup.Vulkin:
	        global.monstertype[0] = MonsterType.Vulkin
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_733")
	        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
	        break
	    
		// Pyrope
		case BattleGroup.Pyrope:
	        global.monstertype[0] = MonsterType.Pyrope
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_747")
	        global.monsterinstance[0] = instance_create(108, 7, obj_pyrope)
	        break
	    
		// Waterfall Encounters (Part 2)
		
		// Double Moldsmal
		case BattleGroup.DoubleMoldsmal2:
	        global.monstertype[0] = MonsterType.Moldsmal_2
	        global.monstertype[1] = MonsterType.Moldsmal_2
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_596")
	        global.monsterinstance[0] = instance_create(214, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(418, 156, obj_moldsmal)
	        break
	    
		// Woshua, Aaron
		case BattleGroup.WoshuaAaron:
	        global.monstertype[0] = MonsterType.Woshua
	        global.monstertype[1] = MonsterType.Aaron
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_778")
	        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
	        global.monsterinstance[1] = instance_create(318, 38, obj_aaron)
	        break
	    
		// Woshua, Moldbygg
		case BattleGroup.WoshuaMoldbygg:
	        global.monstertype[0] = MonsterType.Woshua
	        global.monstertype[1] = MonsterType.Moldbygg
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_795")
	        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
	        global.monsterinstance[1] = instance_create(318, 156, obj_moldsmalx)
	        with (obj_moldsmalx)
	        {
	            with (mypart1)
	                instance_destroy()
	            visible = false
	            stage = 1
	            global.monstername[myself] = scr_gettext("monstername_26b")
	            mypart1 = instance_create(x, y, part1)
	            mypart1.stage = 1
	            global.hurtanim[myself] = 0
	            image_index = 0
	            scalevalue = 0.01
	        }
	        break
		
		// Hotland Encounters (Part 2)
		
		// Muffet (Boss)
	    case BattleGroup.Muffet:
	        global.monstertype[0] = MonsterType.Muffet
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/spider.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_826")
	        global.monsterinstance[0] = instance_create(214, 37, obj_spiderb)
	        break
	    
		// Mettaton (Second Encounter)
		case BattleGroup.MettatonSecond:
	        global.monstertype[0] = MonsterType.Mettaton_TilePuzzle
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_second)
	        break
	    
		// Waterfall Encounters (Part 3)
		
		// Undyne (Date Fight)
		case BattleGroup.UndyneFakeFight:
	        global.monstertype[0] = MonsterType.Undyne_Date
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/undyneboss.ogg")
	        caster_loop(global.batmusic, 0.9, 1.2)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = " %%"
	        global.monsterinstance[0] = instance_create(250, 75, obj_undynebattle2)
	        break
	    
		// Core Encounters
		
		// Madjick
		case BattleGroup.Madjick:
	        global.monstertype[0] = MonsterType.Madjick
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_868")
	        global.monsterinstance[0] = instance_create(244, 50, obj_wizard)
	        break
	    
		// Knight Knight
		case BattleGroup.KnightKnight:
	        global.monstertype[0] = MonsterType.KnightKnight
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_882")
	        global.monsterinstance[0] = instance_create(56, 40, obj_finalknight)
	        break
	    
		// Final Froggit (Unused)
		case BattleGroup.FinalFroggit:
	        global.monstertype[0] = MonsterType.FinalFroggit
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_896")
	        global.monsterinstance[0] = instance_create(218, 110, obj_finalfroggit)
	        break
	    
		// Astigmatism
		case BattleGroup.Astigmatism:
	        global.monstertype[0] = MonsterType.Astigmatism
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_910")
	        global.monsterinstance[0] = instance_create(218, 110, obj_astigmatism)
	        break
	    
		// Whimsalot (Unused)
		case BattleGroup.Whimsalot:
	        global.monstertype[0] = MonsterType.Whimsalot
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_924")
	        global.monsterinstance[0] = instance_create(218, 110, obj_whimsalot)
	        break
	    
		// Whimsalot, Final Froggit
		case BattleGroup.WhimsalotFinalFroggit:
	        global.monstertype[0] = MonsterType.Whimsalot
	        global.monstertype[1] = MonsterType.FinalFroggit
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_938")
	        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(416, 110, obj_finalfroggit)
	        break
	    
		// Whimsalot, Astigmatism
		case BattleGroup.WhimsalotAstigmatism:
	        global.monstertype[0] = MonsterType.Whimsalot
	        global.monstertype[1] = MonsterType.Astigmatism
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_953")
	        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Astigmatism
		case BattleGroup.FinalFroggitAstigmatism:
	        global.monstertype[0] = MonsterType.FinalFroggit
	        global.monstertype[1] = MonsterType.Astigmatism
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_968")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Astigmatism, Whimsalot
		case BattleGroup.FinalFroggitAstigmatismWhimsalot:
	        global.monstertype[0] = MonsterType.FinalFroggit
	        global.monstertype[1] = MonsterType.Astigmatism
	        global.monstertype[2] = MonsterType.Whimsalot
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_983")
	        global.monsterinstance[0] = instance_create(16, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(218, 110, obj_astigmatism)
	        global.monsterinstance[2] = instance_create(420, 110, obj_whimsalot)
	        break
	    
		// Knight Knight, Madjick
		case BattleGroup.KnightKnightMadjick:
	        global.monstertype[0] = MonsterType.KnightKnight
	        global.monstertype[1] = MonsterType.Madjick
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_999")
	        global.monsterinstance[0] = instance_create(16, 50, obj_finalknight)
	        global.monsterinstance[1] = instance_create(366, 50, obj_wizard)
	        break
	    
		// Hotland Encounters (Part 3)
		
		// Bomb (Unused)
		case BattleGroup.Bomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1015")
	        global.monsterinstance[0] = instance_create(256, 120, obj_battlebomb)
	        break
	    
		// Dog Bomb
		case BattleGroup.DogBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1029")
	        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47a")
	        global.monsterinstance[0].bombtype = BombType.Dog
	        global.monsterinstance[0].mypart1.type = BombType.Dog
	        global.monsterinstance[0].mypart1.bombtype = BombType.Dog
	        global.monsterinstance[0].mypart1.sprite_index = spr_tobdog_sleep_firebattle
	        break
	    
		// Water Glass Bomb
		case BattleGroup.WaterGlassBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1049")
	        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47b")
	        global.monsterinstance[0].bombtype = BombType.ExtremelyAgileGlassOfWater
	        global.monsterinstance[0].mypart1.type = BombType.ExtremelyAgileGlassOfWater
	        global.monsterinstance[0].mypart1.bombtype = BombType.ExtremelyAgileGlassOfWater
	        global.monsterinstance[0].mypart1.sprite_index = spr_waterglass_battle
	        break
	    
		// Script Bomb
		case BattleGroup.ScriptBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1068")
	        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47c")
	        global.monsterinstance[0].bombtype = BombType.Script
	        global.monsterinstance[0].mypart1.type = BombType.Script
	        global.monsterinstance[0].mypart1.bombtype = BombType.Script
	        break
	    
		// Basketball Bomb
		case BattleGroup.BasketballBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1088")
	        global.monsterinstance[0] = instance_create(256, 80, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47d")
	        global.monsterinstance[0].bombtype = BombType.Basketball
	        global.monsterinstance[0].mypart1.type = BombType.Basketball
	        global.monsterinstance[0].mypart1.bombtype = BombType.Basketball
	        break
	    
		// Present Bomb
		case BattleGroup.PresentBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1107")
	        global.monsterinstance[0] = instance_create(250, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47e")
	        global.monsterinstance[0].bombtype = BombType.Present
	        global.monsterinstance[0].mypart1.type = BombType.Present
	        global.monsterinstance[0].mypart1.bombtype = BombType.Present
	        break
	    
		// Game Bomb
		case BattleGroup.GameBomb:
	        global.monstertype[0] = MonsterType.Bomb
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1126")
	        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47f")
	        global.monsterinstance[0].bombtype = BombType.Game
	        global.monsterinstance[0].mypart1.type = BombType.Game
	        global.monsterinstance[0].mypart1.bombtype = BombType.Game
	        break
	    
		// Royale Guards (RG 04, RG 03, Unused)
		case BattleGroup.RoyaleGuards:
	        global.monstertype[0] = MonsterType.RG_04
	        global.monstertype[1] = MonsterType.RG_03
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_704")
	        global.monsterinstance[0] = instance_create(46, 66, obj_bara04)
	        global.monsterinstance[1] = instance_create(460, 66, obj_bara03)
	        break
	    
		// Tsunderplane, Vulkin
		case BattleGroup.TsunderplaneVulkin:
	        global.monstertype[0] = MonsterType.Tsunderplane
	        global.monstertype[1] = MonsterType.Vulkin
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1160")
	        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
	        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
	        break
	    
		// Double Pyrope
		case BattleGroup.DoublePyrope:
	        global.monstertype[0] = MonsterType.Pyrope
	        global.monstertype[1] = MonsterType.Pyrope
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1176")
	        global.monsterinstance[0] = instance_create(106, 10, obj_pyrope)
	        global.monsterinstance[1] = instance_create(306, 10, obj_pyrope)
	        break
	    
		// Double Vulkin (Unused)
		case BattleGroup.DoubleVulkin:
	        global.monstertype[0] = MonsterType.Vulkin
	        global.monstertype[1] = MonsterType.Vulkin
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1191")
	        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
	        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
	        break
	    
		// Mettaton (Boss)
		case BattleGroup.Mettaton:
	        global.monstertype[0] = MonsterType.Mettaton_3
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(300, 190, obj_mettatonb_third)
	        break
	    
		// Mettaton EX
		case BattleGroup.MettatonEX:
	        global.monstertype[0] = MonsterType.MettatonEX
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/mettaton_ex.ogg")
	        caster_loop(global.batmusic, 1, 0.97)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1221")
	        global.monsterinstance[0] = instance_create(210, 60, obj_mettatonex)
	        break
	    
		// True Lab Encounters
		
		// Lemon Bread
		case BattleGroup.LemonBread:
	        global.monstertype[0] = MonsterType.LemonBread
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1236")
	        global.monsterinstance[0] = instance_create(280, 20, obj_lemonbread)
	        break
	    
		// Reaper Bird
		case BattleGroup.ReaperBird:
	        global.monstertype[0] = MonsterType.ReaperBird
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1250")
	        global.monsterinstance[0] = instance_create(240, 20, obj_reaperbird)
	        break
	    
		// Snowdrakes Mother
		case BattleGroup.SnowdrakesMother:
	        global.monstertype[0] = MonsterType.Amalgamate
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/snowy.ogg")
	        caster_loop(global.batmusic, 0.9, 0.5)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1264")
	        global.monsterinstance[0] = instance_create(240, 20, obj_snowdrakemom)
	        break
	    
		// Triple Memoryhead
		case BattleGroup.TripleMemoryhead:
	        global.monstertype[0] = MonsterType.Memoryhead
	        global.monstertype[1] = MonsterType.Memoryhead
	        global.monstertype[2] = MonsterType.Memoryhead
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1278")
	        global.monsterinstance[0] = instance_create(15, 146, obj_memoryhead)
	        global.monsterinstance[1] = instance_create(217, 146, obj_memoryhead)
	        global.monsterinstance[2] = instance_create(421, 146, obj_memoryhead)
	        break
	    
		// Endogeny
		case BattleGroup.Endogeny:
	        global.monstertype[0] = MonsterType.Endogeny
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/sfx_woofenstein_loop.ogg")
	        caster_loop(global.batmusic, 0.8, 0.85)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1294")
	        global.monsterinstance[0] = instance_create(180, 90, obj_endogeny)
	        break
	    
		// Asriel Lost Souls
		
		// Undyne (Lost Soul)
		case BattleGroup.LostSoulUndyne:
	        global.monstertype[0] = MonsterType.LostSoul_Undyne
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1314")
	        global.monsterinstance[0] = instance_create(296, 70, obj_ripoff_undyne)
	        break
	    
		// Papyrus, Sans (Lost Soul)
		case BattleGroup.LostSoulSansPapyrus:
	        global.monstertype[0] = MonsterType.LostSoul_Papyrus
	        global.monstertype[1] = MonsterType.LostSoul_Sans
	        global.monstertype[2] = MonsterType.NotSet
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1334")
	        global.monsterinstance[0] = instance_create(76, 35, obj_ripoff_papyrus)
	        global.monsterinstance[1] = instance_create(456, 148, obj_ripoff_sans)
	        break
	    
		// Alphys (Lost Soul)
		case BattleGroup.LostSoulAlphys:
	        global.monstertype[0] = MonsterType.LostSoul_Alphys
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1314")
	        global.monsterinstance[0] = instance_create(266, 100, obj_ripoff_alphys)
	        break
	    
		// Toriel, Asgore (Lost Soul)
		case BattleGroup.LostSoulTorielAsgore:
	        global.monstertype[0] = MonsterType.LostSoul_Toriel
	        global.monstertype[1] = MonsterType.LostSoul_Asgore
	        global.monstertype[2] = MonsterType.NotSet
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1334")
	        global.monsterinstance[0] = instance_create(26, 94, obj_ripoff_toriel)
	        global.monsterinstance[1] = instance_create(356, 62, obj_ripoff_asgore)
	        break
	    
		// Genocide Encounters
		
		// Monster Kid
		case BattleGroup.MonsterKid:
	        global.monstertype[0] = MonsterType.MonsterKid
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 1, 0.25)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1395")
	        global.monsterinstance[0] = instance_create(260, 110, obj_mkid_battle)
	        break
	    
		// Undyne (Genocide Boss)
		case BattleGroup.UndyneTheUndying:
	        global.monstertype[0] = MonsterType.UndyneTheUndying
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/x_undyne.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1410")
	        global.monsterinstance[0] = instance_create(210, 20, obj_undyne_ex)
	        break
	    
		// Glad Dummy
		case BattleGroup.GladDummy:
	        global.monstertype[0] = MonsterType.GladDummy
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1422")
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_gladdummy)
	        break
	    
		// Mettaton NEO
		case BattleGroup.MettatonNEO:
	        global.monstertype[0] = MonsterType.MettatonNEO
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/mettaton_neo.ogg")
	        caster_loop(global.batmusic, 0.7, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1439")
	        global.monsterinstance[0] = instance_create(210, 0, obj_mettaton_neo)
	        break
	    
		// Sans
		case BattleGroup.Sans:
	        with (obj_battlebg)
	            instance_destroy()
	        global.monstertype[0] = MonsterType.Sans
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/zz_megalovania.ogg")
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = ""
	        global.monsterinstance[0] = instance_create(270, 110, obj_sansb)
	        break
	    
		// Asgore Related Stuff
		
		// Asgore (Intro)
		case BattleGroup.AsgoreIntro:
	        global.monstertype[0] = MonsterType.Asgore
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = ""
	        global.monster[0] = 1
	        global.monsterinstance[0] = instance_create(116, 16, obj_asgore_finalintro)
	        global.mnfight = -999
	        break
	    
		// Asgore (Boss)
		case BattleGroup.Asgore:
	        global.monstertype[0] = MonsterType.Asgore
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/vsasgore.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1484")
	        global.monsterinstance[0] = instance_create(208, 8, obj_asgoreb)
	        instance_create(0, 0, obj_purplegradienter)
	        instance_create(0, 0, obj_orangeparticlegen)
	        break
	    
		// Hard Mode Encounters
		
		// Final Froggit, Astigmatism
		case BattleGroup.HardModeFinalFroggitAstigmatism:
	        global.monstertype[0] = MonsterType.FinalFroggit_Hardmode
	        global.monstertype[1] = MonsterType.Astigmatism_Hardmode
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1501")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Migospel
		case BattleGroup.HardModeFinalFroggitMigospel:
	        global.monstertype[0] = MonsterType.FinalFroggit_Hardmode
	        global.monstertype[1] = MonsterType.Migospel
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1517")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(426, 130, obj_migospel)
	        break
	    
		// Parsnik
		case BattleGroup.HardModeParsnik:
	        global.monstertype[0] = MonsterType.Parsnik
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1532")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        break
	    
		// Double Moldessa
		case BattleGroup.HardModeDoubleMoldessa:
	        global.monstertype[0] = MonsterType.Moldessa
	        global.monstertype[1] = MonsterType.Moldessa
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1547")
	        global.monsterinstance[0] = instance_create(118, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(318, 127, obj_moldessa)
	        break
	    
		// Triple Moldessa
		case BattleGroup.HardModeTripleMoldessa:
	        global.monstertype[0] = MonsterType.Moldessa
	        global.monstertype[1] = MonsterType.Moldessa
	        global.monstertype[2] = MonsterType.Moldessa
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1563")
	        global.monsterinstance[0] = instance_create(18, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(218, 127, obj_moldessa)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Final Froggit, Whimsalot
		case BattleGroup.HardModeFinalFroggitWhimsalot:
	        global.monstertype[0] = MonsterType.FinalFroggit_Hardmode
	        global.monstertype[1] = MonsterType.Whimsalot_Hardmode
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1580")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 120, obj_whimsalot)
	        break
	    
		// Final Froggit
		case BattleGroup.HardModeFinalFroggit:
	        global.monstertype[0] = MonsterType.FinalFroggit_Hardmode
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1595")
	        global.monsterinstance[0] = instance_create(208, 110, obj_finalfroggit)
	        break
	    
		// Whimsalot, Parsnik (Unused)
		case BattleGroup.HardModeWhimsalotParsnik:
	        global.monstertype[0] = MonsterType.Whimsalot_Hardmode
	        global.monstertype[1] = MonsterType.Parsnik
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1609")
	        global.monsterinstance[0] = instance_create(110, 120, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(316, 120, obj_parsnik)
	        break
	    
		// Moldessa, Migospel
		case BattleGroup.HardModeMoldessaMigospel:
	        global.monstertype[0] = MonsterType.Moldessa
	        global.monstertype[1] = MonsterType.Migospel
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1624")
	        global.monsterinstance[0] = instance_create(116, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
	        break
	    
		// Parsnik, Migospel
		case BattleGroup.HardModeParsnikMigospel:
	        global.monstertype[0] = MonsterType.Parsnik
	        global.monstertype[1] = MonsterType.Migospel
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1639")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
	        break
	    
		// Double Parsnik
		case BattleGroup.HardModeDoubleParsnik:
	        global.monstertype[0] = MonsterType.Parsnik
	        global.monstertype[1] = MonsterType.Parsnik
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1654")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(318, 120, obj_parsnik)
	        break
	    
		// Parsnik, Astigmatism (Unused)
		case BattleGroup.HardModeParsnikAstigmatism:
	        global.monstertype[0] = MonsterType.Parsnik
	        global.monstertype[1] = MonsterType.Astigmatism_Hardmode
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1669")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(314, 110, obj_astigmatism)
	        break
	    
		// Double Astigmatism
		case BattleGroup.HardModeDoubleAstigmatism:
	        global.monstertype[0] = MonsterType.Astigmatism_Hardmode
	        global.monstertype[1] = MonsterType.Astigmatism_Hardmode
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1684")
	        global.monsterinstance[0] = instance_create(108, 110, obj_astigmatism)
	        global.monsterinstance[1] = instance_create(312, 110, obj_astigmatism)
	        break
	    
		// Astigmatism, Migospel, Moldessa (Unused)
		case BattleGroup.HardModeAstigmatismMigospelMoldessa:
	        global.monstertype[0] = MonsterType.Astigmatism_Hardmode
	        global.monstertype[1] = MonsterType.Migospel
	        global.monstertype[2] = MonsterType.Moldessa
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1699") //* Looks like a real party.
	        global.monsterinstance[0] = instance_create(8, 110, obj_astigmatism)
	        global.monsterinstance[1] = instance_create(213, 130, obj_migospel)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Whimsalot, Parsnik, Moldessa (Unused)
		case BattleGroup.HardModeWhimsalotParsnikMoldessa:
	        global.monstertype[0] = MonsterType.Astigmatism_Hardmode // Vultu: This isn't incorrect, toby just made an error
	        global.monstertype[1] = MonsterType.Parsnik
	        global.monstertype[2] = MonsterType.Moldessa
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1716") //* Party from Hell.
	        global.monsterinstance[0] = instance_create(18, 120, obj_whimsalot) // Vultu: This isn't incorrect, toby just made an error
	        global.monsterinstance[1] = instance_create(218, 120, obj_parsnik)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Secret Bosses
		
		// Glyde
		case BattleGroup.Glyde:
	        global.monstertype[0] = MonsterType.Glyde
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1733") //* Glyde swooped in!
	        global.monsterinstance[0] = instance_create(188, 16, obj_glydeb)
	        break
	    
		// So Sorry
		case BattleGroup.SoSorry:
	        global.monstertype[0] = MonsterType.SoSorry
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.batmusic = mus_wrongworld
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1747") //* You're blocked in politely!
	        global.monsterinstance[0] = instance_create(216, 78, obj_sosorry)
	        break
	    
		// Mad Mew Mew
		case BattleGroup.MadMewMew:
	        global.monstertype[0] = MonsterType.MadMewMew
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_mewmew_1") //* There's a doll here.
	        if (global.tempvalue[14] == 1)
	            scr_gettext("scr_battlegroup_mewmew_2") //* Mad Mew Mew blocks the way!
	        global.monsterinstance[0] = instance_create(216, 40, obj_mewmew_boss)
	        break
	    
		// Asriel Stuff
		
		// Asriel (Boss)
		case BattleGroup.Asriel:
	        global.monstertype[0] = MonsterType.AsrielDreemurr
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        caster_free(all)
	        global.batmusic = caster_load("music/xpart.ogg")
	        caster_loop(global.batmusic, 0.8, 0.95)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1762") //* It's the end.
	        global.monsterinstance[0] = instance_create(258, 8, obj_asrielb)
	        break

		// Asriel (Final Form)
		case BattleGroup.AsrielFinal:
	        global.monstertype[0] = MonsterType.Asriel
	        global.monstertype[1] = MonsterType.NotSet
	        global.monstertype[2] = MonsterType.NotSet
	        FL_InBattle = true
	        FL_FightingAsriel = true
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/a2.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1787") //* ASRIEL blocks the way!
	        if (FL_AsrielFightConvoCounter == 2)
	            global.msg[0] = scr_gettext("scr_battlegroup_1789") //* ASRIEL's SOUL was awakened&  by the power of your&  friends!
	        if (FL_AsrielFightConvoCounter == 3)
	            global.msg[0] = scr_gettext("scr_battlegroup_1791") //* It's time to say goodbye.
	        global.border = 0
	        SCR_BORDERSETUP()
	        global.monsterinstance[0] = instance_create(320, 48, obj_asrielfinal)
	        break
	}
	
}
