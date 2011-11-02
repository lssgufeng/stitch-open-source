#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor blackColor];
}
- (void)buttonMethod:(id)sender{
system("perl kbot.pl");
NSLog(@"Couldnt find kbot.pl");
}
- (void)viewDidLoad{
	UIButton * _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
_button.frame = CGRectMake(100,100,100,60);
[_button addTarget:self action:@selector(buttonMethod:) forControlEvents: UIControlEventTouchUpInside];
[_button setTitle:@"Start Kbot" forState:UIControlStateNormal];
[self.view addSubview:_button];

}
@end
