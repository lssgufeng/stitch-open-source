#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
#include "sdluac.h"
using namespace std;






int main(int argc, char ** argv){
sdluac coreluac;
SDL_Surface * screen = NULL;
SDL_Event event;
if(SDL_Init(SDL_INIT_EVERYTHING) == -1) return false ;
screen = SDL_SetVideoMode(640,480,32,SDL_SWSURFACE);
if(screen == NULL) return false;
lua_State *L;
L = lua_open();
luaL_openlibs(L);
bool quit = false;
if(argc == 1){
cout<<"Use -l or -ls or -h!\n";
}
while(!quit){

	if(SDL_PollEvent(&event)){
		SDL_Delay(25);
		continue;
		}
	switch(event.type){
case SDL_QUIT:
quit = true;
break;
}
coreluac.loop(argc,L);
}
SDL_Quit();
lua_close(L);
}
