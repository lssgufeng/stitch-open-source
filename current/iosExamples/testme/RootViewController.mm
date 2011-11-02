#import "RootViewController.h"
#import <AVFoundation/AVCaptureSession.h>
@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor redColor];
}

-(void)buttonMethod:(id)sender{
UIAlertView * _avview = [[UIAlertView alloc] initWithTitle:@"Hello World" message:@"Im a button" delegate:self cancelButtonTitle:@"Cancel" 
otherButtonTitles:nil];
[_avview show];
[_avview release];
}


- (void)viewDidLoad{
	UIButton * _button;
	_button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	_button.frame = CGRectMake(100,100,100,60);
	[_button addTarget:self  action:@selector(buttonMethod:) forControlEvents:UIControlEventTouchUpInside ];
	[self.view addSubview:_button];

}
@end
