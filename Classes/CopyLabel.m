#import "CopyLabel.h"

@implementation CopyLabel

- (void) awakeFromNib
{
    [super awakeFromNib];
    [self becomeFirstResponder];
    UIGestureRecognizer *touchy = [[UITapGestureRecognizer alloc]
        initWithTarget:self action:@selector(handleTap:)];
    [self addGestureRecognizer:touchy];
    [self setUserInteractionEnabled:YES];
    [touchy release];
}

- (void) copy: (id) sender
{
    NSLog(@"Do whatever you want.");
}

- (BOOL) canPerformAction: (SEL) action withSender: (id) sender
{
    return (action == @selector(copy:));
}

- (BOOL) canBecomeFirstResponder
{
    return YES;
}

- (void) handleTap: (UIGestureRecognizer*) recognizer
{
    UIMenuController *menu = [UIMenuController sharedMenuController];
    [menu setTargetRect:self.frame inView:self.superview];
    [menu setMenuVisible:YES animated:YES];
}

@end
