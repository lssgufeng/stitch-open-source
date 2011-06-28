#!/bin/awk -f
#ehh still working this one out its meant to parse a formatted file for use with another program
{
FS = ":";
OFS = " ";

	print $1,$2,$3
}

