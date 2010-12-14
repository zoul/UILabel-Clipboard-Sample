@interface Application : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
    UIViewController *controller;
}

@property(retain) IBOutlet UIWindow *window;
@property(retain) IBOutlet UIViewController *controller;

@end

