#include <lua.hpp>
#include <iostream>
#include <SDL/SDL.h>
#include <SDL/SDL_thread.h>
using namespace std;

bool quit = false;

void interpret(lua_State* L){
	int error;
	int x = 0;
	char buffer[256];
	while(x == 0){
	cout<<"Lua >> ";
	cin.getline(buffer,256);
	error = luaL_loadbuffer(L,buffer,strlen(buffer), "line") || lua_pcall(L,0,0,0);
	if(error){
		cout << lua_tostring(L,-1) << endl;
			lua_pop(L,1);
	}
}
}

int handler(void* data){
while(quit == false){
interpret((lua_State*) data);
}
return 0;
}


void lsmain(lua_State* L, SDL_Event event){
        SDL_Thread * thread ;
	cout<<"Entering lsmain...\n";
	thread = SDL_CreateThread(handler,L);
	for(;;){
	SDL_PollEvent(&event);
		
	if(event.type == SDL_QUIT){
		quit = true;
		lua_close(L);
		SDL_Quit();

	  }
	
		
			
}
}
		
