#include <iostream>
#include <stdio.h>
#include <string.h>
#include <lua.hpp>

bool done = false;

int main(int argc,char ** argv){
char buff[256];
int error;

lua_State * l;
l = lua_open();
luaL_openlibs(l);

if(argv[1]){
luaL_dofile(l,argv[1]);
return 1;
}
std::cout<<"Lua>>";
while(fgets(buff,sizeof(buff),stdin) != NULL){
error = luaL_loadbuffer(l,buff,strlen(buff),"line") || lua_pcall(l,0,0,0);
std::cout<<"Lua>>";
if(error){
fprintf(stderr,"%s",lua_tostring(l,-1));
lua_pop(l,1);
}
}
lua_close(l);
return 0;

}
