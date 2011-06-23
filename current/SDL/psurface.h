#ifndef _PONG_SURFACE_H
#define _PONG_SURFACE_H
#include <SDL/SDL.h>

class psurface{
	public:
		psurface();
	public:
		static SDL_Surface* ldbmp(char * file);
		 static bool draw(SDL_Surface* Surf_Dest, SDL_Surface* Surf_Src, int X, int Y);
};
#endif
