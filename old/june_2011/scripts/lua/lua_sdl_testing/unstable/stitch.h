#ifndef _STITCH_H_
#define _STITCH_H_
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
using namespace std;

double VERSION= 1.2;

void interpret_lua(lua_State *l){
int error;
char buffer[256];
cout<<"Lua>> ";
while(fgets(buffer,sizeof(buffer),stdin) != NULL){
error = luaL_loadbuffer(l, buffer,strlen(buffer),"line") || lua_pcall(l,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(l,-1));
lua_pop(l,1);
}//if(error) end
}//while() end
}//else if end

void proc_args(int argc,char ** argv,lua_State *L){
int i;
for(i=0;i<argc; i++){
if(string(argv[i]) == "-h"){
cout<<"Usage: myluac [args]\n";
cout<<"-h	This message\n";
cout<<"-l	lua interpreter\n";
cout<<"-ls	interpret a lua script\n";
cout<<"-v	version information\n";
exit(0);
}

if(string(argv[i]) == "-v"){
cout<<"Version: "<<VERSION<<"\nCODER: Core\n";
}


if(string(argv[i]) == "-ls"){
luaL_dofile(L,argv[i+1]); //LUA execute script
}

if(string(argv[i]) == "-l"){
interpret_lua(L);
break;
}
}
}

/*
void sdlinit(SDL_Event Event,SDL_Surface* Display){
if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			exit(0);
	}
	if((Display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			exit(0);
	}

}

void proc_events(SDL_Event myevent){
while(SDL_PollEvent(&myevent)){
if(myevent->type == SDL_QUIT){
SDL_Quit();
}
}
}

*/






#endif
