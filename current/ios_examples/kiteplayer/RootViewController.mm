#import "RootViewController.h"
#import <AudioToolbox/AudioServices.h>
@implementation RootViewController


- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor blackColor];
}
- (void)buttonMethod:(id)sender{
SystemSoundID musicID;

NSString * musicPath = [[NSBundle mainBundle] 
pathForResource:@"someMusic" ofType:@"mp3" 
inDirectory:@"/Applications/kiteplayer.app/"];
CFURLRef musicURL = (CFURLRef ) [NSURL fileURLWithPath: musicPath];
AudioServicesCreateSystemSoundID(musicURL, &musicID);
AudioServicesPlaySystemSound(musicID);
}
- (void)viewDidLoad{
	UIButton * _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	_button.frame = CGRectMake(100,100,100,60);
	[_button setTitle:@ "Play" forState:UIControlStateNormal];
	[_button addTarget:self action:@selector(buttonMethod:) forControlEvents: UIControlEventTouchUpInside];
	[self.view addSubview:_button];
}
@end
