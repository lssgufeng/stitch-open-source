#ifndef __LSMAIN_H_
#define __LSMAIN_H_

#include <lua.hpp>
#include <iostream>
#include <SDL/SDL.h>
#include <boost/asio.h>
using namespace std;

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


void lsmain(lua_State* L, SDL_Event event){
	char buffer[256];
	int iter = 0;
	int error = 0;
	cout<<"Entering lsmain...\n";
	boost::asio::io_service interpreter;
	for(iter = 0; iter !=1;){
		SDL_PollEvent(&event);
			if(event.type == SDL_KEYUP){
				lua_close(L);
				SDL_Quit();
				exit(0);
			  }
		
}
}
#endif
