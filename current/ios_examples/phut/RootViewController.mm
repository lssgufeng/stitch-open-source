#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	self.view.backgroundColor = [UIColor blackColor];
}

-(void)viewDidLoad{
	UILabel *_label;
	_label = [[UILabel alloc] initWithFrame: CGRectMake(0,0,320,100)];
	_label.text = @"pHut\nCoded By: Keldor aka Aquertu";
	_label.textColor = [UIColor whiteColor];
	_label.backgroundColor = [UIColor clearColor];
	[self.view addSubview:_label];

}

@end
