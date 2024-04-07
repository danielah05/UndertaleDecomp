q += 1
quiztimer = 300
phase = 1
answer = -1
alarm[4] = 90
obj_heart.movement = 99
if (q == 99)
{
    alarm[4] = 60
    qtext = "What's a pretzel's#favorite color?"
    a1 = "Black"
    a2 = "Yellow"
    a3 = "Red"
    a4 = "Dusk"
    correct = 2
    event_user(1)
}
if (q == 1)
{
    alarm[4] = 80
    qtext = scr_gettext("mettquiz_q1_text")
    a1 = scr_gettext("mettquiz_q1_a1")
    a2 = scr_gettext("mettquiz_q1_a2")
    a3 = scr_gettext("mettquiz_q1_a3")
    a4 = scr_gettext("mettquiz_q1_a4")
    correct = 3
    event_user(1)
}
if (q == 2)
{
    alarm[4] = 60
    qtext = scr_gettext("mettquiz_q2_text")
    a1 = scr_gettext("mettquiz_q2_a1")
    a2 = scr_gettext("mettquiz_q2_a2")
    a3 = scr_gettext("mettquiz_q2_a3")
    a4 = scr_gettext("mettquiz_q2_a4")
    correct = 2
    event_user(1)
}
if (q == 3)
{
    alarm[4] = 60
    qtext = scr_gettext("mettquiz_q3_text")
    a1 = scr_gettext("mettquiz_q3_a1")
    a2 = scr_gettext("mettquiz_q3_a2")
    a3 = scr_gettext("mettquiz_q3_a3")
    a4 = scr_gettext("mettquiz_q3_a4")
    correct = 1
    event_user(1)
}
if (q == 4)
{
    qtext = scr_gettext("mettquiz_q4_text")
    a1 = scr_gettext("mettquiz_q4_a1")
    a2 = scr_gettext("mettquiz_q4_a2")
    a3 = scr_gettext("mettquiz_q4_a3")
    a4 = scr_gettext("mettquiz_q4_a4")
    correct = 3
    alarm[4] = 90
    event_user(1)
}
if (q == 5)
{
    alarm[4] = 60
    qtext = scr_gettext("mettquiz_q5_text")
    a1 = scr_gettext("mettquiz_q5_a1")
    a2 = scr_gettext("mettquiz_q5_a2")
    a3 = scr_gettext("mettquiz_q5_a3")
    a4 = scr_gettext("mettquiz_q5_a4")
    correct = 0
    event_user(1)
    instance_create(280, 120, obj_flyjar)
}
if (q == 6)
{
    alarm[4] = 60
    qtext = scr_gettext("mettquiz_q6_text")
    a1 = scr_gettext("mettquiz_q6_a1")
    a2 = scr_gettext("mettquiz_q6_a2")
    a3 = scr_gettext("mettquiz_q6_a3")
    a4 = scr_gettext("mettquiz_q6_a4")
    correct = 3
    event_user(1)
    instance_create(250, 120, obj_zoomaton)
}
if (q == 7)
{
    qtext = scr_gettext("mettquiz_q7_text")
    a1 = scr_gettext("mettquiz_q7_a1")
    a2 = scr_gettext("mettquiz_q7_a2")
    a3 = scr_gettext("mettquiz_q7_a3")
    a4 = scr_gettext("mettquiz_q7_a4")
    correct = 5
    alarm[4] = 30
    event_user(1)
}
if (q == 8)
{
    alarm[4] = 45
    qtext = scr_gettext("mettquiz_q8_text")
    a1 = "special1"
    a2 = "special1"
    a3 = "special1"
    a4 = "special1"
    correct = 2
    event_user(1)
}
if (q == 9)
{
    alarm[4] = 200
    qtext = scr_gettext("mettquiz_q9_text")
    correct = 5
}
if (q == 10)
{
    alarm[4] = 70
    qtext = scr_gettext("mettquiz_q10_text")
    a1 = scr_gettext("mettquiz_q10_a1")
    a2 = scr_gettext("mettquiz_q10_a2")
    a3 = scr_gettext("mettquiz_q10_a3")
    a4 = scr_gettext("mettquiz_q10_a4")
    correct = 6
    event_user(1)
}
if (q == 14)
{
    qtext = "How bright is#this text?"
    a1 = "85% Bright"
    a2 = "84% Bright"
    a3 = "86% Bright"
    a4 = "83% Bright"
    correct = 1
    alarm[4] = 60
    event_user(1)
}
