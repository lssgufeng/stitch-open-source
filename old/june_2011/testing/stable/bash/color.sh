#!/bin/bash
RED='31;40m'
WB='31;0m'
CHANGE='\x1b\x5b1;'
printf  $CHANGE$RED'Hello World I am Red\n'
printf  $CHANGE$WB '\n'
printf  $CHANGE'10;29m Hello World\n'
