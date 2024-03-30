function command_def(_displayName, _about, _functionRef, _arguments) constructor
{
	displayName = _displayName;
	about = _about;
	functionRef = _functionRef;
	arguments = _arguments;
	argumentHints = array_create(array_length(_arguments), []);
}