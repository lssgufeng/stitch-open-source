#!/bin/bash
clear
echo "Compiling lsmain.cpp"
g++ lsmain.cpp -o lsmain -lSDL -llua -Wall
echo "Finished."
