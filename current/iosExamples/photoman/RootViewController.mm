#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor blackColor];
}
- (void)viewDidLoad{
	UIButton* _button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
	_button.frame = CGRectMake(100,100,100,60);
	[_button setTitle: @"some button" forState: UIControlStateNormal];
	[self.view addSubview:_button];
}
@end
