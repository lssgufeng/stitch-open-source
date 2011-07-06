#include "lsmain.h"

int main(int argc, char ** argv){
SDL_Surface * screen = NULL;
SDL_Event Event;
if(SDL_Init(SDL_INIT_EVERYTHING) == -1) return -1;
screen = SDL_SetVideoMode( 640, 480, 32, SDL_SWSURFACE);
if(screen == NULL){
cout<<"Screen Failed...\n";
exit(1);
}
SDL_WM_SetCaption("SDL + Lua + C++",NULL);
lua_State * L;
L = lua_open();
luaL_openlibs(L);

lsmain(L, &Event);


return 0;
}
