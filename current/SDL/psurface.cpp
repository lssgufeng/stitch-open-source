#include "psurface.h"

psurface::psurface(){
}

SDL_Surface* psurface::ldbmp(char* file){
	SDL_Surface* surftmp = NULL;
	SDL_Surface* surfreturn = NULL;

	if((surftmp = SDL_LoadBMP(file)) == NULL){
			return NULL;
	}

	surfreturn = SDL_DisplayFormat(surftmp);
	SDL_FreeSurface(surftmp);
	return surfreturn;
}

bool psurface::draw(SDL_Surface* Surf_Dest, SDL_Surface* Surf_Src, int X, int Y) {
    if(Surf_Dest == NULL || Surf_Src == NULL) {
        return false;
    }

    SDL_Rect DestR;

    DestR.x = X;
    DestR.y = Y;

    SDL_BlitSurface(Surf_Src, NULL, Surf_Dest, &DestR);

    return true;
}
