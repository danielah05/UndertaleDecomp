xx = (surface_get_width(application_surface) / 2)
yy = (global.language == "en" ? ((surface_get_height(application_surface) / 2) - 40) : ((surface_get_height(application_surface) / 2) - 80))
y = (surface_get_height(application_surface) - 60)
vspeed = -4
friction = 0.05
font_face = (global.language == "en" ? 1 : 13)
font_scale_1 = (global.language == "en" ? 1.5 : 1.25)
font_scale_2 = (global.language == "en" ? 1 : 0.75)
var unusedstring = "* (It's a picture of a dog juggling several balls.) * (You feel satisfaction that your hard work reverse engineering the encryption of the Xbox One has paid off.)"
var xbox_controller_connect_0 = (global.language == "en" ? "No Controller Connected" : "コントローラーが\nせつぞくされていません")
var xbox_controller_connect_1 = (global.language == "en" ? "Please connect a controller." : "コントローラーを　せつぞくしてください。")
var xbox_controller_connect_2 = (global.language == "en" ? "That seems to be your thing." : "かわった　クセを　おもちのようで。")
var xbox_controller_connect_3 = (global.language == "en" ? "No Controlly Cannoli" : "コントローうー\nせつぞくされひいもせん")
var xbox_controller_connect_4 = (global.language == "en" ? "No Controlly is Cannoli" : "コントローうーが\nせつぞくされひいもせん")
var xbox_controller_connect_5 = (global.language == "en" ? "No head is connected.\nNo body is connected.\nNo arms are connected.\nNo legs are connected.\nNo skin is connected.\nNo ears are connected.\nNo face is connected\nNo mouth is connected.\nNo heart is connected.\nNo teeth are connected.\nNo heart is connected." : "アタマが　せつぞくされていません。\nどうたいが　せつぞくされていません。\nウデが　せつぞくされていません。\nアシが　せつぞくされていません。\nハダが　せつぞくされていません。\nミミが　せつぞくされていません。\nカオが　せつぞくされていません。\nクチが　せつぞくされていません。\nココロが　せつぞくされていません。\nハが　せつぞくされていません。\nココロが　せつぞくされていません。")
var xbox_controller_connect_6 = (global.language == "en" ? "You were excited about dating\na very handsome skeleton and\npulled the controller out by\naccident. I understand." : "イケメンスケルトンと　デートできて\nテンションがあがり　うっかり\nコントローラーを　ぬいてしまいましたね。\nわかります。")
var xbox_controller_connect_7 = (global.language == "en" ? "No Controller Connected" : "コントローラーが\nせつぞく　されてないよ")
main_message = xbox_controller_connect_0
sub_message = xbox_controller_connect_1
timera = 60
timerb = 660
global.xbox_disconnect_counter++
disconnect_message = 0
if (global.xbox_disconnect_counter > 8)
    disconnect_message = 1
if (floor(random(20)) == 1 && global.seriousbattle == 0 && global.kills == 0 && room < room_fire_hotelbed)
    disconnect_message = 2
if (room >= room_truelab_hall1 && room <= room_truelab_power)
    disconnect_message = 3
if (room >= room_f_start && room <= room_f_phrase)
    disconnect_message = 4
if (room == room_papdate)
    disconnect_message = 5
if (disconnect_message == 1)
    sub_message = xbox_controller_connect_2
if (disconnect_message == 2)
{
    main_message = xbox_controller_connect_3
    sub_message = xbox_controller_connect_4
}
if (disconnect_message == 3)
    sub_message = xbox_controller_connect_5
if (disconnect_message == 4)
{
    main_message = xbox_controller_connect_7
    sub_message = " "
}
if (disconnect_message == 5)
    sub_message = xbox_controller_connect_6
