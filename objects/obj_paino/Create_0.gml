p[0] = caster_load("music/paino/piano1.ogg")
p[1] = caster_load("music/paino/piano2.ogg")
p[2] = caster_load("music/paino/piano3.ogg")
p[3] = caster_load("music/paino/piano4.ogg")
p[4] = caster_load("music/paino/piano5.ogg")
p[5] = caster_load("music/paino/piano6.ogg")
p[6] = caster_load("music/paino/piano7.ogg")
p[7] = caster_load("music/paino/piano8.ogg")
p[8] = caster_load("music/paino/piano9.ogg")
p[9] = caster_load("music/paino/pianoA.ogg")
for (i = 0; i < 30; i += 1)
    pp[i] = -1
for (i = 0; i < 10; i += 1)
{
    justplayed[i] = 0
    played[i] = 0
}
num = 0
global.interact = 1
buffer = 5
coff = 0
won = 0
wonned = 0
oldmode = 0
