#!/bin/bash

g++ main.cpp lua.cpp init.cpp event.cpp loop.cpp render.cpp cleanup.cpp psurface.cpp -o pong -Wall -lSDL -llua
