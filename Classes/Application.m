#import "Application.h"

@implementation Application
@synthesize window, controller;

- (void) applicationDidFinishLaunching: (UIApplication*) application
{
    [window addSubview:controller.view];
    [window makeKeyAndVisible];
}

- (void) dealloc
{
    [window release];
    [controller release];
    [super dealloc];
}

@end
