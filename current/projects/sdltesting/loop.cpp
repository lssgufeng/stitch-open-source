#include "pong.h"
//loop.cpp

void pong::loop(int argc,char ** argv){
for(int x=0; x<argc; x++){
if(string(argv[x]) == "-l"){
pong::interpret_lua(pong::L);
}
}
}
