function scr_enemynpc3()
{
	if (global.plot > 191)
	{
	    if (FL_TruePacifist == true || FL_DisableRandomEncounters == true)
	    {
	        if (FL_HotlandKillsCounter == 0 && FL_UnusedButChecked_206 == 0)
	            return true;
	        else
	            return false;
	    }
	    else
	        return false;
	}
	else
	    return false;
}
