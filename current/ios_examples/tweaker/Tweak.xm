/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.
*/

#import <UIKit/UIKit.h>
#import "/var/root/testing/dpatcher/RootViewController.h"

%hook RootViewController
//function to hook here, to call the original use the %orig specifier
- (void) loadView{
self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
self.view.backgroundColor = [UIColor blueColor];
UILabel *_myLabel;
return;
}
	
%end

