#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cstdio>
#include <string>
using namespace std;

int main(int argc,char ** argv){
if(argc <= 1){
cout<<"Enter a file name please\n";
exit(0);
}
else{
fstream in;
in.open(argv[1],fstream::in | fstream::out | fstream::binary);
string input;
unsigned int v;
unsigned int print;
unsigned int g;
int iter;
cout<<"Coded By: Celtrix\nCommands are read <address> and write <address> <value> and then save\n";
for(iter = 0; input!="save";){
cout<<"Hex Edit("<<argv[1]<<"): ";
cin>>input;
if(input == "read"){
cin>>hex>>v;
in.seekg(v);
print=in.get();
g=in.tellg();
cout<<"Value at offset("<<hex<<g-1<<"): "<<hex<<print;
cout<<endl;
}
if(input == "write"){
cin>>hex>>v;
in.seekp(v);
cin>>hex>>v;
in.put(v);
}
else if(input == "save"){
in.close();
}
cin.get();
cout<<endl;
}
}
return 0;
}
