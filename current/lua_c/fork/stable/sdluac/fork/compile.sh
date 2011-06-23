#!/bin/bash
#Compile Script: coreluac
echo "Compiling...."
g++ classy.cpp -o coreluac -llua -Wall -lSDL
echo "Finished Compiling coreluac..."
echo "To invoke type ./coreluac -h...\n"

