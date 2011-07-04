#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
#include "sdluac.h"
using namespace std;

float VERSION = 1.2;

bool running = true;

int main(int argc,char ** argv){
char buff[256];
int error;
if(argc == 1){
cout<<"Use -l or -ls or -h!\n";
}


//SDL CODE
SDL_Event* Event = NULL;
SDL_Surface* display = NULL;

if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			return false;
	}
	if((display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			return false;
	}


//END OF SDL CODE
//BEGIN LUA CODE

lua_State * l;
l = lua_open();
luaL_openlibs(l);
//END LUA CODE
//BEGIN MAIN
while(running == true){



for (int i=1; i<argc; i++){

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
luaL_dofile(l,argv[2]); //LUA execute script
}

//LUA INTERPRETER
else if(string(argv[i]) == "-l"){
cout<<"Lua>> ";
while(fgets(buff,sizeof(buff),stdin) != NULL){
error = luaL_loadbuffer(l,buff,strlen(buff),"line") || lua_pcall(l,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(l,-1));
lua_pop(l,1);
}//if(error) end
}//while() end
}//else if end

}//end of while running
}//end of for statement
//END OF LUA INTERPRETER
proc_events();
lua_close(l);
return 0;

}
