#ifndef _SDLUAC_H_
#define _SDLUAC_H_
#include<iostream>
#include<stdio.h>
#include<string.h>
#include<lua.hpp>
#include<cstdlib>
#include<SDL/SDL.h>
using namespace std;



void interpret_lua(lua_State * L){
int error;
char buf[256];
cout<<"Lua>> ";
while(fgets(buf,sizeof(buf),stdin) != NULL){
error = luaL_loadbuffer(L,buf,strlen(buf),"line") || lua_pcall(L,0,0,0);
cout<<"Lua>> ";
if(error){
fprintf(stderr,"%s\n",lua_tostring(L,-1));
lua_pop(L,1);
}
}
}

/*
void flagtest(int argc,char ** argv){
int x = 0;

for(x=0;x<argc,x++){

if(string(argv[x]) == "-h"){
cout<<"Usage: myluac [args]\n";
cout<<"-h       This message\n";
cout<<"-l       lua interpreter\n";
cout<<"-ls      interpret a lua script\n";
cout<<"-v       version information\n";
exit(0);
}

if(string(argv[x]) == "-v"){
cout<<"Version: "<<VERSION<<"\nCODER: Core\n";
}


if(string(argv[x]) == "-ls"){
luaL_dofile(L,argv[2]);
}

if(string(argv[x]) == "-l"){
interpret_lua(lua_State * L);
}
}//end of for loop

}
*/
#endif
