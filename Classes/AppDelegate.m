#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window, controller;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    controller = [[ViewController alloc] init];
    [window setRootViewController:controller];
    [window makeKeyAndVisible];
    return YES;
}


@end
