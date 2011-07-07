#!/bin/bash
clear
echo "Compiling main.cpp"
g++ main.cpp -o main -lSDL -llua -Wall -lboost_thread

