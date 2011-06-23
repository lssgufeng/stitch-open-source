#include "pong.h"
//main.cpp

pong::pong(){
	
}

int pong::OnExecute(){
return 0;
}

int main(int argc,char ** argv){
pong itzpong;

itzpong.L = lua_open();
luaL_openlibs(itzpong.L);
	itzpong.display = NULL;
	itzpong.running=true;
if(itzpong.init() == false){
		return -1;
	}

	SDL_Event Event;
	while(itzpong.running){
		while(SDL_PollEvent(&Event)){
			itzpong.event(&Event);
	}
	itzpong.loop(argc,argv);
	itzpong.render();
}
	itzpong.cleanup();
	lua_close(itzpong.L);
	return 0;


}
