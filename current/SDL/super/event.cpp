#include "pong.h"
//event.cpp

void pong::event(SDL_Event* Event){
if(Event->type == SDL_QUIT) {
        running = false;
    }
}
