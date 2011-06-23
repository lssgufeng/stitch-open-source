#include "pong.h"




void pong::interpret_lua(lua_State *L){
int error;
cout<<"Lua>> ";
while(fgets(pong::buf,sizeof(pong::buf),stdin) != NULL){
error = luaL_loadbuffer(L,pong::buf,strlen(pong::buf),"line") || lua_pcall(L,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(L,-1));
lua_pop(L,1);
}//if(error) end
}//while() end
}
