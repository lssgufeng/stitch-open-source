#!/bin/bash
#Compile Script: coreluac
echo "Compiling...."
g++ main.cpp -o coreluac -llua -Wall
echo "Finished Compiling coreluac..."
echo "To invoke type ./coreluac -h...\n"

