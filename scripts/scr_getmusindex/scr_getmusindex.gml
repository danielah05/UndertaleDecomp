/// @func				scr_getmusicindex(filepath)
/// @desc				Gets the internal music handle for an old music filepath
/// @param		{real}	filepath	The filepath/name to look for
/// @returns	{Asset.GMSound}
function scr_getmusindex(_filepath)
{
	if (_filepath == "music/story.ogg")
	    song_index = mus_story
	if (_filepath == "music/bad.ogg")
	    song_index = mus_bad
	if (_filepath == "music/toriel.ogg")
	    song_index = mus_toriel
	if (_filepath == "music/flowey.ogg")
	    song_index = mus_flowey
	if (_filepath == "music/prebattle1.ogg")
	    song_index = mus_prebattle1
	if (_filepath == "music/tension.ogg")
	    song_index = mus_tension
	if (_filepath == "music/ghostbattle.ogg")
	    song_index = mus_ghostbattle
	if (_filepath == "music/menu1.ogg")
	    song_index = mus_menu1
	if (_filepath == "music/menu2.ogg")
	    song_index = mus_menu2
	if (_filepath == "music/menu3.ogg")
	    song_index = mus_menu3
	if (_filepath == "music/menu4.ogg")
	    song_index = mus_menu4
	if (_filepath == "music/house1.ogg")
	    song_index = mus_house1
	if (_filepath == "music/intronoise.ogg")
	    song_index = mus_intronoise
	if (_filepath == "music/cymbal.ogg")
	    song_index = mus_cymbal
	if (_filepath == "music/silence.ogg")
	    song_index = mus_silence
	if (_filepath == "music/piano.ogg")
	    song_index = mus_piano
	if (_filepath == "music/battle1.ogg")
	    song_index = mus_battle1
	if (_filepath == "music/boss1.ogg")
	    song_index = mus_boss1
	if (_filepath == "music/house2.ogg")
	    song_index = mus_house2
	if (_filepath == "music/ruins.ogg")
	    song_index = mus_ruins
	if (_filepath == "music/gameover.ogg")
	    song_index = mus_gameover
	if (_filepath == "music/papyrus.ogg")
	    song_index = mus_papyrus
	if (_filepath == "music/snowy.ogg")
	    song_index = mus_snowy
	if (_filepath == "music/wind.ogg")
	    song_index = mus_wind
	if (_filepath == "music/snowwalk.ogg")
	    song_index = mus_snowwalk
	if (_filepath == "music/whoopee.ogg")
	    song_index = mus_whoopee
	if (_filepath == "music/muscle.ogg")
	    song_index = mus_muscle
	if (_filepath == "music/rimshot.ogg")
	    song_index = mus_rimshot
	if (_filepath == "music/tone2.ogg")
	    song_index = mus_tone2
	if (_filepath == "music/tone3.ogg")
	    song_index = mus_tone3
	if (_filepath == "music/sticksnap.ogg")
	    song_index = mus_sticksnap
	if (_filepath == "music/dogmeander.ogg")
	    song_index = mus_dogmeander
	if (_filepath == "music/waterfall.ogg")
	    song_index = mus_waterfall
	if (_filepath == "music/waterquiet.ogg")
	    song_index = mus_waterquiet
	if (_filepath == "music/ambientwater.ogg")
	    song_index = mus_ambientwater
	if (_filepath == "music/undynefast.ogg")
	    song_index = mus_undynefast
	if (_filepath == "music/fearsting.ogg")
	    song_index = mus_fearsting
	if (_filepath == "music/musicbox.ogg")
	    song_index = mus_musicbox
	if (_filepath == "music/rain.ogg")
	    song_index = mus_rain
	if (_filepath == "music/rain_deep.ogg")
	    song_index = mus_rain_deep
	if (_filepath == "music/napstahouse.ogg")
	    song_index = mus_napstahouse
	if (_filepath == "music/spoopy.ogg")
	    song_index = mus_spoopy
	if (_filepath == "music/spoopy_wave.ogg")
	    song_index = mus_spoopy_wave
	if (_filepath == "music/spoopy_holiday.ogg")
	    song_index = mus_spoopy_holiday
	if (_filepath == "music/dununnn.ogg")
	    song_index = mus_dununnn
	if (_filepath == "music/predummy.ogg")
	    song_index = mus_predummy
	if (_filepath == "music/napstachords.ogg")
	    song_index = mus_napstachords
	if (_filepath == "music/undyneboss.ogg")
	    song_index = mus_undyneboss
	if (_filepath == "music/endingexcerpt1.ogg")
	    song_index = mus_endingexcerpt1
	if (_filepath == "music/endingexcerpt2.ogg")
	    song_index = mus_endingexcerpt2
	if (_filepath == "music/paino/piano1.ogg")
	    song_index = mus_piano1
	if (_filepath == "music/paino/piano2.ogg")
	    song_index = mus_piano2
	if (_filepath == "music/paino/piano3.ogg")
	    song_index = mus_piano3
	if (_filepath == "music/paino/piano4.ogg")
	    song_index = mus_piano4
	if (_filepath == "music/paino/piano5.ogg")
	    song_index = mus_piano5
	if (_filepath == "music/paino/piano6.ogg")
	    song_index = mus_piano6
	if (_filepath == "music/paino/piano7.ogg")
	    song_index = mus_piano7
	if (_filepath == "music/paino/piano8.ogg")
	    song_index = mus_piano8
	if (_filepath == "music/paino/piano9.ogg")
	    song_index = mus_piano9
	if (_filepath == "music/paino/pianoA.ogg")
	    song_index = mus_pianoA
	if (_filepath == "music/shyren/badnote1.ogg")
	    song_index = mus_badnote1
	if (_filepath == "music/shyren/badnote2.ogg")
	    song_index = mus_badnote2
	if (_filepath == "music/shyren/badnote3.ogg")
	    song_index = mus_badnote3
	if (_filepath == "music/shyren/note1.ogg")
	    song_index = mus_note1
	if (_filepath == "music/shyren/note2.ogg")
	    song_index = mus_note2
	if (_filepath == "music/shyren/note3.ogg")
	    song_index = mus_note3
	if (_filepath == "music/shyren/note4.ogg")
	    song_index = mus_note4
	if (_filepath == "music/shyren/note5.ogg")
	    song_index = mus_note5
	if (_filepath == "music/shyren/note6.ogg")
	    song_index = mus_note6
	if (_filepath == "music/shyren/singF.ogg")
	    song_index = mus_singF
	if (_filepath == "music/shyren/singG.ogg")
	    song_index = mus_singG
	if (_filepath == "music/shyren/singvoice.ogg")
	    song_index = mus_singvoice
	if (_filepath == "music/dialup/dialup_0.ogg")
	    song_index = mus_dialup_0
	if (_filepath == "music/dialup/dialup_1.ogg")
	    song_index = mus_dialup_1
	if (_filepath == "music/dialup/dialup_2.ogg")
	    song_index = mus_dialup_2
	if (_filepath == "music/dialup/dialup_3.ogg")
	    song_index = mus_dialup_3
	if (_filepath == "music/dialup/dialup_4.ogg")
	    song_index = mus_dialup_4
	if (_filepath == "music/dialup/dialup_5.ogg")
	    song_index = mus_dialup_5
	if (_filepath == "music/drum/cuica.ogg")
	    song_index = mus_drumcuica
	if (_filepath == "music/drum/cuica2.ogg")
	    song_index = mus_drumcuica2
	if (_filepath == "music/drum/cymbal.ogg")
	    song_index = mus_drumcymbal
	if (_filepath == "music/drum/kick.ogg")
	    song_index = mus_drumkick
	if (_filepath == "music/drum/snare.ogg")
	    song_index = mus_drumsnare
	if (_filepath == "music/oogloop.ogg")
	    song_index = mus_oogloop
	if (_filepath == "music/anothermedium.ogg")
	    song_index = mus_anothermedium
	if (_filepath == "music/drone.ogg")
	    song_index = mus_drone
	if (_filepath == "music/mettsmash.ogg")
	    song_index = mus_mettsmash
	if (_filepath == "music/mett_cheer.ogg")
	    song_index = mus_mett_cheer
	if (_filepath == "music/mett_applause.ogg")
	    song_index = mus_mett_applause
	if (_filepath == "music/alphysfix.ogg")
	    song_index = mus_alphysfix
	if (_filepath == "music/confession.ogg")
	    song_index = mus_confession
	if (_filepath == "music/chime.ogg")
	    song_index = mus_chime
	if (_filepath == "music/rotate.ogg")
	    song_index = mus_rotate
	if (_filepath == "music/mettmusical1.ogg")
	    song_index = mus_mettmusical1
	if (_filepath == "music/mettmusical2.ogg")
	    song_index = mus_mettmusical2
	if (_filepath == "music/mettmusical3.ogg")
	    song_index = mus_mettmusical3
	if (_filepath == "music/mettmusical4.ogg")
	    song_index = mus_mettmusical4
	if (_filepath == "music/create.ogg")
	    song_index = mus_create
	if (_filepath == "music/bgflameA.ogg")
	    song_index = mus_bgflameA
	if (_filepath == "music/deeploop2.ogg")
	    song_index = mus_deeploop2
	if (_filepath == "music/elevator.ogg")
	    song_index = mus_elevator
	if (_filepath == "music/elevator_last.ogg")
	    song_index = mus_elevator_last
	if (_filepath == "music/operatile.ogg")
	    song_index = mus_operatile
	if (_filepath == "music/mettafly.ogg")
	    song_index = mus_mettafly
	if (_filepath == "music/myemeow.ogg")
	    song_index = mus_myemeow
	if (_filepath == "music/core_ambience.ogg")
	    song_index = mus_core_ambience
	if (_filepath == "music/ohyes.ogg")
	    song_index = mus_ohyes
	if (_filepath == "music/mt_yeah.ogg")
	    song_index = mus_mt_yeah
	if (_filepath == "music/bergentruckung.ogg")
	    song_index = mus_bergentruckung
	if (_filepath == "music/sfx_cinematiccut.ogg")
	    song_index = mus_sfx_cinematiccut
	if (_filepath == "music/sfx_swipe.ogg")
	    song_index = mus_sfx_swipe
	if (_filepath == "music/explosion.ogg")
	    song_index = mus_explosion
	if (_filepath == "music/sfx_eyeflash.ogg")
	    song_index = mus_sfx_eyeflash
	if (_filepath == "music/sfx_chainsaw.ogg")
	    song_index = mus_sfx_chainsaw
	if (_filepath == "music/sfx_gunshot.ogg")
	    song_index = mus_sfx_gunshot
	if (_filepath == "music/sfx_frypan.ogg")
	    song_index = mus_sfx_frypan
	if (_filepath == "music/sfx_bookspin.ogg")
	    song_index = mus_sfx_bookspin
	if (_filepath == "music/toomuch.ogg")
	    song_index = mus_toomuch
	if (_filepath == "music/sfx_oh.ogg")
	    song_index = mus_sfx_oh
	if (_filepath == "music/sfx_generate.ogg")
	    song_index = mus_sfx_generate
	if (_filepath == "music/sfx_yowl.ogg")
	    song_index = mus_sfx_yowl
	if (_filepath == "music/sfx_ahh.ogg")
	    song_index = mus_sfx_ahh
	if (_filepath == "music/sfx_voice_triple.ogg")
	    song_index = mus_sfx_voice_triple
	if (_filepath == "music/sfx_voice_jafe.ogg")
	    song_index = mus_sfx_voice_jafe
	if (_filepath == "music/sfx_ted.ogg")
	    song_index = mus_sfx_ted
	if (_filepath == "music/sfx_voice_ted.ogg")
	    song_index = mus_sfx_voice_ted
	if (_filepath == "music/yourbestfriend_3.ogg")
	    song_index = mus_yourbestfriend_3
	if (_filepath == "music/repeat_1.ogg")
	    song_index = mus_repeat_1
	if (_filepath == "music/repeat_2.ogg")
	    song_index = mus_repeat_2
	if (_filepath == "music/f_intro.ogg")
	    song_index = mus_f_intro
	if (_filepath == "music/f_laugh.ogg")
	    song_index = mus_f_laugh
	if (_filepath == "music/f_alarm.ogg")
	    song_index = mus_f_alarm
	if (_filepath == "music/f_noise.ogg")
	    song_index = mus_f_noise
	if (_filepath == "music/f_part1.ogg")
	    song_index = mus_f_part1
	if (_filepath == "music/f_6s_1.ogg")
	    song_index = mus_f_6s_1
	if (_filepath == "music/f_6s_2.ogg")
	    song_index = mus_f_6s_2
	if (_filepath == "music/f_6s_3.ogg")
	    song_index = mus_f_6s_3
	if (_filepath == "music/f_6s_4.ogg")
	    song_index = mus_f_6s_4
	if (_filepath == "music/f_6s_5.ogg")
	    song_index = mus_f_6s_5
	if (_filepath == "music/f_6s_6.ogg")
	    song_index = mus_f_6s_6
	if (_filepath == "music/f_part2.ogg")
	    song_index = mus_f_part2
	if (_filepath == "music/f_part3.ogg")
	    song_index = mus_f_part3
	if (_filepath == "music/f_endnote.ogg")
	    song_index = mus_f_endnote
	if (_filepath == "music/f_finale_1.ogg")
	    song_index = mus_f_finale_1
	if (_filepath == "music/f_finale_1_l.ogg")
	    song_index = mus_f_finale_1_l
	if (_filepath == "music/f_finale_2.ogg")
	    song_index = mus_f_finale_2
	if (_filepath == "music/f_finale_3.ogg")
	    song_index = mus_f_finale_3
	if (_filepath == "music/f_saved.ogg")
	    song_index = mus_f_saved
	if (_filepath == "music/f_destroyed.ogg")
	    song_index = mus_f_destroyed
	if (_filepath == "music/f_destroyed2.ogg")
	    song_index = mus_f_destroyed2
	if (_filepath == "music/f_destroyed3.ogg")
	    song_index = mus_f_destroyed3
	if (_filepath == "music/f_glock.ogg")
	    song_index = mus_f_glock
	if (_filepath == "music/f_orchhit.ogg")
	    song_index = mus_f_orchhit
	if (_filepath == "music/f_orchhit_l.ogg")
	    song_index = mus_f_orchhit_l
	if (_filepath == "music/f_wind1.ogg")
	    song_index = mus_f_wind1
	if (_filepath == "music/f_wind2.ogg")
	    song_index = mus_f_wind2
	if (_filepath == "music/f_newlaugh.ogg")
	    song_index = mus_f_newlaugh
	if (_filepath == "music/f_newlaugh_low.ogg")
	    song_index = mus_f_newlaugh_low
	if (_filepath == "music/sfx_gigapunch.ogg")
	    song_index = mus_sfx_gigapunch
	if (_filepath == "music/story_stuck.ogg")
	    song_index = mus_story_stuck
	if (_filepath == "music/z_ending.ogg")
	    song_index = mus_z_ending
	if (_filepath == "music/amalgam.ogg")
	    song_index = mus_amalgam
	if (_filepath == "music/creepy_ambience.ogg")
	    song_index = mus_creepy_ambience
	if (_filepath == "music/hereweare.ogg")
	    song_index = mus_hereweare
	if (_filepath == "music/fallendown2.ogg")
	    song_index = mus_fallendown2
	if (_filepath == "music/dontgiveup.ogg")
	    song_index = mus_dontgiveup
	if (_filepath == "music/xpart_a.ogg")
	    song_index = mus_xpart_a
	if (_filepath == "music/xpart_b.ogg")
	    song_index = mus_xpart_b
	if (_filepath == "music/xpart.ogg")
	    song_index = mus_xpart
	if (_filepath == "music/xpart_2.ogg")
	    song_index = mus_xpart_2
	if (_filepath == "music/xpart_back.ogg")
	    song_index = mus_xpart_back
	if (_filepath == "music/reunited.ogg")
	    song_index = mus_reunited
	if (_filepath == "music/leave.ogg")
	    song_index = mus_leave
	if (_filepath == "music/a2.ogg")
	    song_index = mus_a2
	if (_filepath == "music/sfx/sfx_abreak2.ogg")
	    song_index = mus_sfx_abreak2
	if (_filepath == "music/sfx/sfx_abreak.ogg")
	    song_index = mus_sfx_abreak
	if (_filepath == "music/sfx/sfx_a_target.ogg")
	    song_index = mus_sfx_a_target
	if (_filepath == "music/sfx/sfx_a_bullet.ogg")
	    song_index = mus_sfx_a_bullet
	if (_filepath == "music/sfx/sfx_a_swordappear.ogg")
	    song_index = mus_sfx_a_swordappear
	if (_filepath == "music/sfx/sfx_a_pullback.ogg")
	    song_index = mus_sfx_a_pullback
	if (_filepath == "music/sfx/sfx_a_lithit.ogg")
	    song_index = mus_sfx_a_lithit
	if (_filepath == "music/sfx/sfx_a_gigatalk.ogg")
	    song_index = mus_sfx_a_gigatalk
	if (_filepath == "music/sfx/sfx_a_grab.ogg")
	    song_index = mus_sfx_a_grab
	if (_filepath == "music/sfx/sfx_a_swipe.ogg")
	    song_index = mus_sfx_a_swipe
	if (_filepath == "music/sfx/sfx_sparkles.ogg")
	    song_index = mus_sfx_sparkles
	if (_filepath == "music/sfx/sfx_rainbowbeam_hold.ogg")
	    song_index = mus_sfx_rainbowbeam_hold
	if (_filepath == "music/sfx/sfx_hypergoner_charge.ogg")
	    song_index = mus_sfx_hypergoner_charge
	if (_filepath == "music/sfx/sfx_spellcast.ogg")
	    song_index = mus_sfx_spellcast
	if (_filepath == "music/sfx/sfx_star.ogg")
	    song_index = mus_sfx_star
	if (_filepath == "music/sfx/sfx_segapower.ogg")
	    song_index = mus_sfx_segapower
	if (_filepath == "music/sfx/sfx_segapower2.ogg")
	    song_index = mus_sfx_segapower2
	if (_filepath == "music/sfx/sfx_rainbowbeam_1.ogg")
	    song_index = mus_sfx_rainbowbeam_1
	if (_filepath == "music/sfx/sfx_hypergoner_laugh.ogg")
	    song_index = mus_sfx_hypergoner_laugh
	if (_filepath == "music/end/cast_1.ogg")
	    song_index = mus_cast_1
	if (_filepath == "music/end/cast_2.ogg")
	    song_index = mus_cast_2
	if (_filepath == "music/end/cast_3.ogg")
	    song_index = mus_cast_3
	if (_filepath == "music/end/cast_4.ogg")
	    song_index = mus_cast_4
	if (_filepath == "music/end/cast_5.ogg")
	    song_index = mus_cast_5
	if (_filepath == "music/end/cast_6.ogg")
	    song_index = mus_cast_6
	if (_filepath == "music/end/cast_7.ogg")
	    song_index = mus_cast_7
	if (_filepath == "music/end/crickets.ogg")
	    song_index = mus_crickets
	if (_filepath == "music/end/doorclose.ogg")
	    song_index = mus_doorclose
	if (_filepath == "music/end/dooropen.ogg")
	    song_index = mus_dooropen
	if (_filepath == "music/end/express_myself.ogg")
	    song_index = mus_express_myself
	if (_filepath == "music/x_undyne.ogg")
	    song_index = mus_x_undyne
	if (_filepath == "music/x_undyne_pre.ogg")
	    song_index = mus_x_undyne_pre
	if (_filepath == "music/mettaton_neo.ogg")
	    song_index = mus_mettaton_neo
	if (_filepath == "music/zz_megalovania.ogg")
	    song_index = mus_zz_megalovania
	if (_filepath == "music/zzz_c2.ogg")
	    song_index = mus_zzz_c2
	if (_filepath == "music/zzz_c.ogg")
	    song_index = mus_zzz_c
	if (_filepath == "music/dance_of_dog.ogg")
	    song_index = mus_dance_of_dog
	if (_filepath == "music/sigh_of_dog.ogg")
	    song_index = mus_sigh_of_dog
	if (_filepath == "music/dogroom.ogg")
	    song_index = mus_dogroom
	if (_filepath == "music/coolbeat.ogg")
	    song_index = mus_coolbeat
	if (_filepath == "music/options_winter.ogg")
	    song_index = mus_options_winter
	if (_filepath == "music/options_fall.ogg")
	    song_index = mus_options_fall
	if (_filepath == "music/options_summer.ogg")
	    song_index = mus_options_summer
	if (_filepath == "music/harpnoise.ogg")
	    song_index = mus_harpnoise
	if (_filepath == "music/battle2.ogg")
	    song_index = mus_battle2
	if (_filepath == "music/mode.ogg")
	    song_index = mus_mode
	if (_filepath == "music/dogsong.ogg")
	    song_index = mus_dogsong
	if (_filepath == "music/papyrusboss.ogg")
	    song_index = mus_papyrusboss
	if (_filepath == "music/shop.ogg")
	    song_index = mus_shop
	if (_filepath == "music/town.ogg")
	    song_index = mus_town
	if (_filepath == "music/computer.ogg")
	    song_index = mus_computer
	if (_filepath == "music/mystery.ogg")
	    song_index = mus_mystery
	if (_filepath == "music/snoresymphony.ogg")
	    song_index = mus_snoresymphony
	if (_filepath == "music/dogappear.ogg")
	    song_index = mus_dogappear
	if (_filepath == "music/wawa.ogg")
	    song_index = mus_wawa
	if (_filepath == "music/tv.ogg")
	    song_index = mus_tv
	if (_filepath == "music/date.ogg")
	    song_index = mus_date
	if (_filepath == "music/date_tense.ogg")
	    song_index = mus_date_tense
	if (_filepath == "music/date_fight.ogg")
	    song_index = mus_date_fight
	if (_filepath == "music/mysteriousroom2.ogg")
	    song_index = mus_mysteriousroom2
	if (_filepath == "music/undynescary.ogg")
	    song_index = mus_undynescary
	if (_filepath == "music/undynetheme.ogg")
	    song_index = mus_undynetheme
	if (_filepath == "music/birdsong.ogg")
	    song_index = mus_birdsong
	if (_filepath == "music/chokedup.ogg")
	    song_index = mus_chokedup
	if (_filepath == "music/dummybattle.ogg")
	    song_index = mus_dummybattle
	if (_filepath == "music/ruinspiano.ogg")
	    song_index = mus_ruinspiano
	if (_filepath == "music/kingdescription.ogg")
	    song_index = mus_kingdescription
	if (_filepath == "music/race.ogg")
	    song_index = mus_race
	if (_filepath == "music/undynetruetheme.ogg")
	    song_index = mus_undynetruetheme
	if (_filepath == "music/undynepiano.ogg")
	    song_index = mus_undynepiano
	if (_filepath == "music/lab.ogg")
	    song_index = mus_lab
	if (_filepath == "music/mtgameshow.ogg")
	    song_index = mus_mtgameshow
	if (_filepath == "music/mettatonbattle.ogg")
	    song_index = mus_mettatonbattle
	if (_filepath == "music/hotel.ogg")
	    song_index = mus_hotel
	if (_filepath == "music/mettsad.ogg")
	    song_index = mus_mettsad
	if (_filepath == "music/spider.ogg")
	    song_index = mus_spider
	if (_filepath == "music/sansdate.ogg")
	    song_index = mus_sansdate
	if (_filepath == "music/star.ogg")
	    song_index = mus_star
	if (_filepath == "music/news.ogg")
	    song_index = mus_news
	if (_filepath == "music/news_battle.ogg")
	    song_index = mus_news_battle
	if (_filepath == "music/hotel_battle.ogg")
	    song_index = mus_hotel_battle
	if (_filepath == "music/core.ogg")
	    song_index = mus_core
	if (_filepath == "music/mettaton_ex.ogg")
	    song_index = mus_mettaton_ex
	if (_filepath == "music/mettaton_pretransform.ogg")
	    song_index = mus_mettaton_pretransform
	if (_filepath == "music/endarea_partb.ogg")
	    song_index = mus_endarea_partb
	if (_filepath == "music/birdnoise.ogg")
	    song_index = mus_birdnoise
	if (_filepath == "music/smallshock.ogg")
	    song_index = mus_smallshock
	if (_filepath == "music/churchbell.ogg")
	    song_index = mus_churchbell
	if (_filepath == "music/barrier.ogg")
	    song_index = mus_barrier
	if (_filepath == "music/vsasgore.ogg")
	    song_index = mus_vsasgore
	if (_filepath == "music/endarea_parta.ogg")
	    song_index = mus_endarea_parta
	if (_filepath == "music/sfx_woofenstein.ogg")
	    song_index = mus_woofenstein
	if (_filepath == "music/sfx_disturbing.ogg")
	    song_index = mus_disturbing
	if (_filepath == "music/sfx_woofenstein_loop.ogg")
	    song_index = mus_woofenstein_loop
	if (_filepath == "music/temvillage.ogg")
	    song_index = mus_temvillage
	if (_filepath == "music/temshop.ogg")
	    song_index = mus_temshop
	priority = 80
	return song_index;
}
