#!/bin/awk -f
BEGIN { print "File\t\tOwner" }
{print $9,"\t",$3}
END {print " -DONE-"}
