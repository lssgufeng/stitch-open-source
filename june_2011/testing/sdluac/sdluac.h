#ifndef _SDLUAC_H_
#define _SDLUAC_H_
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
using namespace std;
int argc;
char ** argv;

double VERSION = 2.8;

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
while(fgets(sdluac::buf,sizeof(sdluac::buf),stdin) != NULL){
error = luaL_loadbuffer(L,sdluac::buf,strlen(sdluac::buf),"line") || lua_pcall(L,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(L,-1));
lua_pop(L,1);
}//if(error) end
}//while() end
}//else if end


void sdluac::init(){
//SDL_Event* Event = NULL;
SDL_Surface* display = NULL;

if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			exit(1);
	}
	if((display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			exit(1);
	}

}

void proc_events(){
SDL_Event my_event;
while(SDL_PollEvent(&my_event)){
	if(my_event.type == SDL_QUIT){
		SDL_Quit();
}
}
}




void sdluac::loop(int argc, lua_State *L){
int x=0;
sdluac::init();
while(running == true){
for(x=0;x<argc;x++){
if(string(argv[x]) == "-h"){
cout<<"Usage: myluac [args]\n";
cout<<"-h	This message\n";
cout<<"-l	lua interpreter\n";
cout<<"-ls	interpret a lua script\n";
cout<<"-v	version information\n";
exit(0);
}

if(string(argv[x]) == "-v"){
cout<<"Version: "<<VERSION<<"\nCODER: Core\n";
}


if(string(argv[x]) == "-ls"){
luaL_dofile(L,argv[2]); 
}

//if(string(argv[x]) == "-l"){
//sdluac::interpret_lua(argc,lua_State * L);
//}





}//for
proc_events();
}

}//while

#endif
