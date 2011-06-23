#ifndef _SDLUAC_H_
#define _SDLUAC_H_
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
using namespace std;
#define VERSION "1.5"
class sdluac{
private:
	
	SDL_Surface* display;
public:
	SDL_Event* Event;
	bool running;
	char buf[256];
	void event(SDL_Event* Event);
	void loop(int argc,lua_State *L,char ** argv);
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
}

void sdluac::init(){
sdluac::display = NULL;
sdluac::Event = NULL;
if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
			exit(1);
	}
	if((sdluac::display = SDL_SetVideoMode(640,480,32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL){
			exit(1);
	}

}

void sdluac::loop(int argc, lua_State *L,char ** argv){
int i=0;
sdluac::init();
while (SDL_PollEvent(sdluac::Event)){
while(running == true){
if(sdluac::Event->type == SDL_QUIT) {
	SDL_Quit();
}
for(i=0;i<argc;i++){
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
luaL_dofile(L,argv[2]); //LUA execute script
}

if(string(argv[i]) == "-l"){
sdluac::interpret_lua(L);
}

}//for



}//while 
}

}//function loop();



#endif
