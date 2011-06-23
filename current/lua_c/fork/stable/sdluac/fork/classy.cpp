#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>
#include <cstdlib>
#include <SDL/SDL.h>
#include "sdluac.h"
using namespace std;






int main(int argc, char ** argv){
sdluac coreluac;
coreluac.Event = NULL;
lua_State *L;
L = lua_open();
luaL_openlibs(L);
if(argc == 1){
cout<<"Use -l or -ls or -h!\n";
}
coreluac.init();
coreluac.loop(argc,L,argv);
lua_close(L);
}
