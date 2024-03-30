snd_play(snd_mtt_hit)
event_user(0)
with (other.id)
    instance_destroy()
life -= 40
if (life < 1 && movetype != 1)
{
    if (global.turntimer > 0)
        global.turntimer = 0
}
global.ratings += 20
