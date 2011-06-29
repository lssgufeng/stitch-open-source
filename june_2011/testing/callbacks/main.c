#include <stdio.h>

// This Program Illustrates printing a loop of an array
// just thought of a clever work around although this involves trashing main
// a int i = sizeof(array) / sizeof(array[0]) statement and cloggin up code
// To clarify if you try to pass an array to a function it decays into a pointer
// which means that you need to get the number of indices in main then pass the
// array to the function for printing along with the number of indices
// of course you could just save yourself the trouble by remembering the number


void list(char * array[], int indices){
int x=0;
for(;x!=indices;x++){
printf("%s",array[x]);
}
}


int main(){
char * array[] = {"Hello World\n","This is a array test\n"};
int i = sizeof(array) / sizeof(array[0]);
void (*lies)(char**,int);
lies = &list;
lies(array,i);
getchar();
return 0;
}
