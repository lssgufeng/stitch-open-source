#import <Foundation/Foundation.h>

@interface myclass : NSObject {
NSString* MyString;
NSString* MyName;

}
- (NSString*) MyString;
- (NSString*) MyName;

- (void) setMyString:(NSString*)input;
- (void) setMyName:(NSString*)input;
@end

@implementation myclass

- (NSString*) MyString{
return MyString;
}

- (NSString*) MyName{
return MyName;
}

-(void) setMyString: (NSString*) input{
[MyString autorelease];
MyString = [input retain];
}

-(void) setMyName: (NSString*) input{
[MyName autorelease];
MyName = [input retain];
}

- (id) init
{
	if(( self = [super init]))
	{
	}
	return self;
}

- (void) dealloc
{
[MyString release];
[MyName release];
[super dealloc];
}

@end
int main(int argc, char **argv, char **envp) {
NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
myclass* pretty = [[myclass alloc] init];
[pretty setMyString: @"other"];
[pretty setMyName: @"stuff "];
NSLog([pretty MyName]);
NSLog([pretty MyString]);
[pretty dealloc];
[pool release];
return 0;
}

// vim:ft=objc
