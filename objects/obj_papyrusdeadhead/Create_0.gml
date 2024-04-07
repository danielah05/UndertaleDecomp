c = 0
ossafe_ini_open("undertale.ini")
M1 = ini_read_real("Papyrus", "PK", 0)
ini_write_real("Papyrus", "PK", (M1 + 1))
ossafe_ini_close()
ossafe_savedata_save()
