#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include <sys/stat.h>
using namespace std;

fstream file;

void printhex(fstream handle){
unsigned int input;
cout<<"Enter an Offset:";
cin>>hex>>input;
unsigned int value,offset;
handle.seekg(input);
value=handle.get();
offset=handle.tellg();
offset=offset-1;
cout<<"Value at Offset("<<hex<<offset<<"): "<<value<<'\n';
}

void writehex(fstream handle){
cout<<"Enter Offset:";
unsigned int input;
cin>>hex>>input;
unsigned int value,offset;
handle.seekp(input);
offset=handle.tellp();
offset=offset-1;
cout<<"Enter Value for Offset("<<hex<<offset<<"):";
cin>>hex>>value;
handle.put(value);
}


int main(int argc,char **argv){
if(argc<=1){
cout<<"Usage: "<<argv[0]<<" <Filename>\n";
exit(0);
}
else{
struct stat filestatus;
int it=0;
string input;
file.open(argv[1], fstream::in | fstream::out | fstream::binary);
stat(argv[1],&filestatus);
char hexbuf[filestatus.st_size];
file.read(hexbuf,filestatus.st_size);
cout<<argv[1]<<" is "<<filestatus.st_size<<" bytes.\n\n";
for(int iter = 0; iter!=filestatus.st_size; iter++){
it++;
file.seekg(iter);
cout<<hex<<file.get();
if(it == 3){
cout<<"  ";
it = 0;
}
}
for(input!="save";;){
cout<<"Hexform: ";
cin>>input;
if(input =="read"){
printhex(file);
}
if(input =="write"){
writehex(file);
}
}
cout<<'\n';
file.close();
}
return 0;
}
