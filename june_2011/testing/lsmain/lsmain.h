#include <lua.hpp>
#include <iostream>
#include <SDL/SDL.h>
#include <SDL/SDL_thread.h>
using namespace std;

bool quit = false;
SDL_Thread * thread;

void interpret(lua_State* L){
	int error;
	char buffer[256];
	while(quit == false){
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
interpret((lua_State*) data);
return 0;
}

void lsmain(lua_State* L, SDL_Event event){
	cout<<"Entering lsmain...\n";
        thread = SDL_CreateThread(handler, L);
	while(quit == false){
	SDL_PollEvent(&event);
	if(event.type == SDL_QUIT){
		quit = true;
		cout<<"Quiting SDL\n";
		SDL_Quit();
		cout<<"SDL Quit...\n";
	  }	
			
}
cout<<"Attempting to close lua...\n";
lua_close(L);
cout<<"Lua Closed\n";
}
		
