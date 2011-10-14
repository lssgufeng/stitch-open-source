#include <iostream>
#include <climits>
#include <string>
#include <fstream>
#include <cstdlib>
using namespace std;
/*
=================================================
Tic Tac Toe(text only)
=================================================
*/

void clear(char * array, char value){
for(int x = 1; x<10; x++){
array[x] = value;
}
}
int checkinput(int input){
if(input != 10 || input != 1 || input !=2  || input !=3  || input !=4 || input != 5 || input != 6 || input != 7 || input != 8){
return 1337;
}
else{
return 0;
}
}
 
int checklock(char * lock, int input){
if(lock[input] == 'L'){
return 1;
} 
if(lock[input] == 'U'){
return 0;
}
else{
return 0;
}
}

void setlock(char * lock, int input){
lock[input] = 'L';
}

void printboard(char * array){
int col1,col2,col3;
cout<<"\n\nCURRENT BOARD:\n";
for(col1 = 1; col1<4; col1++){
cout<<array[col1]<<"\t";
}
cout<<'\n';
for(col2 = col1; col2 < 7; col2++){
cout<<array[col2]<<"\t";
}
cout<<'\n';
for(col3 = col2; col3< 10; col3++){
cout<<array[col3]<<"\t";
}
cout<<"\n \n";
}




int checkwin(char * array){

int player = 0;

//the following until the next comment is the top left bottom right diagonal win


// DIAGONALS 

if(array[1] == 'x' && array[5] == 'x' && array[9] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[1] == 'o'  && array[5] == 'o' && array[9] == 'o'){
cout<<"O Wins!";
player = 2;
}


if(array[3] == 'x' && array[5] == 'x' && array[7] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[3] == 'o'  && array[5] == 'o' && array[7] == 'o'){
cout<<"O Wins!";
player = 2;
}

//HORIZONTAL

if(array[1] == 'x' && array[2] == 'x' && array[3] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[1] == 'o'  && array[2] == 'o' && array[3] == 'o'){
cout<<"O Wins!";
player = 2;
}


if(array[4] == 'x' && array[5] == 'x' && array[6] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[4] == 'o'  && array[5] == 'o' && array[6] == 'o'){
cout<<"O Wins!";
player = 2;
}

if(array[7] == 'x' && array[8] == 'x' && array[9] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[7] == 'o'  && array[8] == 'o' && array[9] == 'o'){
cout<<"O Wins!";
player = 2;
}

//VERTICAL

if(array[1] == 'x' && array[4] == 'x' && array[7] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[1] == 'o'  && array[4] == 'o' && array[7] == 'o'){
cout<<"O Wins!";
player = 2;
}

if(array[2] == 'x' && array[5] == 'x' && array[8] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[2] == 'o'  && array[5] == 'o' && array[8] == 'o'){
cout<<"O Wins!";
player = 2;
}

if(array[3] == 'x' && array[6] == 'x' && array[9] == 'x'){
cout<<"X Wins!";
player = 1;
}
if(array[3] == 'o'  && array[6] == 'o' && array[9] == 'o'){
cout<<"O Wins!";
player = 2;
}

return player;
}


void newgame();

void checkplayerwin(char * array){
int player = checkwin(array);
char input;
if(player == 0){
cout<<" .... \n";
}
if(player == 1){
clear(array,' ');
cout<<"X Wins!\nWould You like to start a new game <Y/n>? ";
cin >> input;
if(input == 'Y' || input == 'y'){
clear(array,'B');
newgame();
}
if(input == 'N' || input == 'n'){
cout<<"Thanks for playing!!!\n";
exit(0);
}
}

if(player == 2){
clear(array,' ');
cout<<"O Wins!\nWould You like to start a new game <Y/n>? ";
cin >> input;
if(input == 'Y' || input == 'y'){
clear(array,'B');
newgame();
}
if(input == 'N' || input == 'n'){
cout<<"Thanks for playing!!!\n";
exit(0);
}
}

}

void set(char * array, int indice, char  xORo){
array[indice] = xORo;
}

void switchplayer(int current){
if(current == 0){
current = 1;
}
else{
current = 0;
}
}


void newgame(){
	char array[10];
	char islocked[10];
	bool done;
	done = false;
	int iter;
	iter = 0;
	int player = 0;

clear(islocked,'U');
clear(array,'b');

int input;

	printboard(array);

	cout<<" Enter a position 1 - 9.\n";

while(!done){
	if(iter == 9){
		done = true;
	}

if(player == 0){
	if(iter!=0){
		printboard(array);
	}
WASTAKEN:
	checkplayerwin(array);
	cout << "Player 1: ";
	cin >> input;
	if(cin.fail() == true){
	cin.clear();
	cin.ignore(INT_MAX,'\n');
	cout<<"\nEnter a Real Number Between 1 and 9!\n";
	goto WASTAKEN;
	}
if(checklock(islocked,input) == 0){
	setlock(islocked,input);
}

else if(checklock(islocked,input) == 1){
	cout<<"\nThat spot has been taken already choose a different spot.\n";
	goto WASTAKEN;
}

if(input < 10){
	set(array,input,'x');
}

else{
	cout<<"You must enter a number between 1 - 9.\n";
}
	player = 1;
	iter++;

}//end of player 0

if(player == 1){
	if(iter != 0){
		printboard(array);
}

LOCKED:
	checkplayerwin(array);
	cout << "Player 2: ";
	cin >> input;

  if(cin.fail() == true){
		cin.clear();
		cin.ignore(INT_MAX,'\n');
		cout<<"\nEnter a Real Number!\n";
		goto LOCKED;
}

	else if(checklock(islocked,input) == 1){
		cout<<"\nThat spot has been taken choose a different spot.\n";
		goto LOCKED;
}


if(input < 10){
	set(array,input, 'o' );
}

else{
	cout<<"You must enter a number between 1 - 9.\n";
}

	player = 0;
	iter++;

}//end of player 1

}//end of while

}


int main(int argc, char ** argv){
newgame();

return 0;
}
