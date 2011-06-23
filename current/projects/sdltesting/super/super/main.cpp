#include "pong.h"
//main.cpp

pong::pong(){
	display = NULL;
	running=true;
}

int pong::OnExecute(){
	if(init() == false){
		return -1;
	}

	SDL_Event Event;
	while(running){
		while(SDL_PollEvent(&Event)){
			event(&Event);
	}
	loop();
	render();
}
	cleanup();
	lua_close(pong::L);
	return 0;
}

int main(int argc,char ** argv){
pong itzpong;

itzpong.L = lua_open();
luaL_openlibs(itzpong.L);
for(int x=0; x<argc; x++){
if(string(argv[x]) == "-l"){
itzpong.interpret_lua(itzpong.L);
}
}

return itzpong.OnExecute();
}
