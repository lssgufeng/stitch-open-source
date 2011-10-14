#!/bin/bash
arm-apple-darwin-g++ dpatcher.cpp -o dpatcher.darwin
cd ./dpatcher.app
mv ../dpatcher.darwin ./dpatcher

