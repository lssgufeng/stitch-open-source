#!/bin/awk -f
{

	if($1 == "#include"){
	print $2, $3
	}
}
