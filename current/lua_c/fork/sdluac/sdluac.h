#ifndef _SDLUAC_H_
#define _SDLUAC_H_
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
using namespace std;

class sdluac{
private:
	bool running;
	SDL_Surface* display;
public:
	char buf[256];
	void event(SDL_Event* Event);
	void loop(int argc,lua_State *L);
	void interpret_lua(lua_State *L);
	void init();
};

void sdluac::interpret_lua(lua_State *L){
int error;
cout<<"Lua>> ";
while(fgets(sdluac::buf,sizeof(sdluac::buff),stdin) != NULL){
error = luaL_loadbuffer(l,sdluac::buf,strlen(sdluac::buf),"line") || lua_pcall(l,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(l,-1));
lua_pop(l,1);
}//if(error) end
}//while() end
}//else if end


void sdluac::init(){
SDL_Event* Event = NULL;
SDL_Surface* display = NULL;

if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			return false;
	}
	if((display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			return false;
	}

}

void sdluac::loop(int argc, lua_State *L){
int x=0;
sdluac::init();
while(running == true){
for(x=0;x<argc,x++){
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

if(string(argv[i]) == "-l"){
sdluac::interpret_lua(lua_State *L);
}





}//for
while(SDL_PollEvent(Event)){
if(Event->type == SDL_QUIT) {
        running = false;
    }
}
}//while
}//function loop();



#endif
