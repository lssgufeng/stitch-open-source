#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	self.view.backgroundColor = [UIColor redColor];
}

-(id)buttonView:(id)sender{
UIView *myview = [[UIView alloc] init];
UIButton *useless = [UIButton buttonWithType:UIButtonTypeRoundedRect];
useless.frame = CGRectMake(100,100,100,60);
[myview addSubview:useless];
self.view = myview;

return self;
}

-(void)viewDidLoad{
	UIButton *_button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[_button addTarget:self action:@selector(buttonView:) forControlEvents:UIControlEventTouchUpInside];
	_button.frame = CGRectMake(100,100,100,60);
	[_button setTitle:@"load view" forState:UIControlStateNormal];
	[self.view addSubview:_button];
	

}
@end
