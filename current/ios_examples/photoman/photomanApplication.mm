#import "RootViewController.h"

@interface photomanApplication: UIApplication <UIApplicationDelegate,UINavigationControllerDelegate> {
	UIWindow *_window;
	RootViewController *_viewController;
}
@property (nonatomic, retain) UIWindow *window;
@end

@implementation photomanApplication
@synthesize window = _window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	UINavigationController* _navController;
	_viewController = [[RootViewController alloc] init];
	RootViewController * one = [[[RootViewController alloc] init] autorelease];
	RootViewController * two = [[[RootViewController alloc] init] autorelease];
	_navController = [[UINavigationController alloc] initWithRootViewController:one];
	[_navController setDelegate:self];
	one.title = @"one";
	[one.view setBackgroundColor: [UIColor blackColor]];
	two.title = @"two";
	[two.view setBackgroundColor: [UIColor whiteColor]];
	[_navController pushViewController: two animated: YES];
	_viewController.view = _navController.view;
	[_window addSubview:_navController.view];
	[_window addSubview:_viewController.view];
	[_window makeKeyAndVisible];
}

- (void)dealloc {
	[_window release];
	[super dealloc];
}
@end

// vim:ft=objc
