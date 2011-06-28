#!/bin/awk -f
#ninc is a small simple tool to check includes for C/C++ files
{

	if($1 == "#include"){
	print $2, $3
	}
}
