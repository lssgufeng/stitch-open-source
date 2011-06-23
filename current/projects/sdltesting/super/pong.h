#ifndef _PONG_H_
#define _PONG_H_
#include <SDL/SDL.h>
#include <lua.hpp>
#include <iostream>
using namespace std;
class pong{
	private:
		bool running;
	SDL_Surface* display;
	public:
		lua_State *L;
		char buf[256];
		pong();
		int OnExecute();
		bool init();
		void event(SDL_Event* Event);
		void loop();
		void render();
		void cleanup();
		void interpret_lua(lua_State *L);
};



#endif
