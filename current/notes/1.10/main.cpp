#include <iostream>
#include <fstream>
#include <cstdlib>
#include <string>
using namespace std;

int main(int argc,char ** argv){
	ofstream file;
	int title;
	title = 0;
if(std::string(argv[1])=="-h"){
	cout<<"notes -h : list's help\n" << "notes -f <filename> : sets the file name to use\n";
	exit(0);
}

if(std::string(argv[1])=="-f"){
	file.open(argv[2]);
}

if(argc !=2 && std::string(argv[1]) != "-f"){
	file.open("notes.txt");
}	

for(int x=0; x!=1;){
	string input;
	
	  getline(cin, input);

if(input==":save"){
goto CLOSE;
}

if(title==1){
	file << '>' << input << '\n';
}

if(title==0){
title=1;
file << input << '\n';
}
}
CLOSE:
file.close();
return 0;
}
