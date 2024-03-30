for (var c = 0; c < array_length(categories); c++)
{
	for (var o = 0; o < array_length(categories[c].options); o++)
		delete categories[c].options[o];
	
	delete categories[c];
}