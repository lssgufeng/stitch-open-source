#!/bin/awk -f

{
FS = ":";
OFS = " ";

	print $1,$2,$3
}

