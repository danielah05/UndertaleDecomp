for (i = 0; i < (wd / 2); i += 1)
{
	if (draw_getpixel((x + (i * 2)), (y + (line * 2))) == c_white)
		ossafe_file_text_write_string(file, "1")
	else
		ossafe_file_text_write_string(file, "0")
	if (global.osflavor >= OSFlavors.Console)
		ossafe_file_text_writeln(file)
}
if (myvapor == 0)
	line += 1
line += 1
if (line > (ht / 2))
{
	ossafe_file_text_write_string(file, "2")
	ossafe_file_text_close(file)
	instance_destroy()
	return;
}
alarm[0] = (1 + myvapor)
