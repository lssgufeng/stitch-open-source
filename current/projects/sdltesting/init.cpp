#include "pong.h"
//init.cpp

bool pong::init(){
	if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			return false;
	}
	if((display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			return false;
	}
	
			return true;
}
