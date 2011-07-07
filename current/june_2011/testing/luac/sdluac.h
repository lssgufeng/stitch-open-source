#ifndef _SDLUAC_H_
#define _SDLUAC_H_
#include<iostream>
#include<cstdio>
#include<string>
#include<lua.hpp>
#include<cstdlib>
#include<SDL/SDL.h>
using namespace std;


void interpret_lua(lua_State* L, SDL_Event event){
	char buffer[256];

	while(true){
	if(SDL_PollEvent(&event)){
		if(event.type == SDL_QUIT){
			SDL_Quit();
			lua_close(L);
			exit(0);
		}
	}
	cout<<"Lua>> ";
	cin.getline(buffer,256);
luaL_loadbuffer(L,buffer,strlen(buffer),"line") || lua_pcall(L,0,0,0);;

}	
}

void parser(SDL_Event event, lua_State *L){
	if(SDL_PollEvent(&event)){
		if(event.type == SDL_QUIT){
			SDL_Quit();
			lua_close(L);
			exit(0);
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
