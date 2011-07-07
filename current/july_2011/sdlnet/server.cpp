//server.cpp
/*############################################################################
Server.cpp - SDL Server test
Coded By : Core

  ############################################################################*/


#include <iostream>
#include <SDL/SDL.h>
using namespace std;


int main(int argc, char ** argv){

TCPsocket sd, csd;
IPaddress ip, *remoteIP;
int quit,quit2;
char buffer[512];

if(SDLNet_Init() < 0)
{
	cout << "SDLNET_Init: " << SDLNet_GetError() << endl;
	exit(EXIT_FAILURE);
}

if(SDLNet_ResolveHost(&ip,NULL,2000) < 0)
{
	cout << "SDLNet_ResolvedHost: " << SDLNet_GetError() << endl;
	exit(EXIT_FAILURE);
}

if(!(sd = SDLNet_TCP_Open(&ip)))
{
	cout << "SDLNet_TCP_Open: " << SDLNet_GetError() << endl;
	exit(EXIT_FAILURE);
}

quit = 0;
while(!quit){
	if((csd = SDLNet_TCP_Accept(sd))){
		if((remoteIP = SDLNet_TCP_GetPeerAddress(csd))){
			cout<<"Host connected: "<< SDLNet_Read32(&remoteIP->host), SDLNet_Read16(&remoteIP->port)<<endl;
		else{
			cout<<"SDLNet_TCP_GetPeerAddress: " << SDLNet_GetError()<<endl;
		}
		}
		quit2=0;
		while(!quit2){
			if (SDLNet_TCP_Recv(csd, buffer, 512) > 0)
				{
					printf("Client say: %s\n", buffer);
 
					if(strcmp(buffer, "exit") == 0)	/* Terminate this connection */
					{
						quit2 = 1;
						printf("Terminate connection\n");
					}
					if(strcmp(buffer, "quit") == 0)	/* Quit the program */
					{
						quit2 = 1;
						quit = 1;
						printf("Quit program\n");
					}
				}
			}
 
			/* Close the client socket */
			SDLNet_TCP_Close(csd);
		}
	}
 
	SDLNet_TCP_Close(sd);
	SDLNet_Quit();
 
	return EXIT_SUCCESS;
}

