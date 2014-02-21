#import "CopyLabel.h"
@interface CopyLabel ()
- (void) unhilight;
@end
@implementation CopyLabel

#pragma mark Initialization

- (void) attachTapHandler
{
    [self setUserInteractionEnabled:YES];
    UIGestureRecognizer *touchy = [[UILongPressGestureRecognizer alloc]
                                   initWithTarget:self action:@selector(handleTap:)];
    [self addGestureRecognizer:touchy];
}

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self attachTapHandler];
        
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self attachTapHandler];
    }
    return self;
}

#pragma mark Clipboard

- (void) copy: (id) sender
{
    if (self.customCopy) {
        self.customCopy(self);
    } else {
        [[UIPasteboard generalPasteboard] setString:self.text];
    }
    
}
- (void) unhilight{
    self.highlighted = NO;
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerWillHideMenuNotification object:nil];
}
- (BOOL) canPerformAction: (SEL) action withSender: (id) sender
{
    return (action == @selector(copy:));
}

- (void) handleTap: (UIGestureRecognizer*) recognizer
{
    [self becomeFirstResponder];
    UIMenuController *menu = [UIMenuController sharedMenuController];
    if ([menu isMenuVisible]) {
    } else {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(unhilight) name:UIMenuControllerWillHideMenuNotification object:nil];
        [menu setTargetRect:self.frame inView:self.superview];
        [menu setMenuVisible:YES animated:YES];
        self.highlighted = YES;
    }
    
}

- (BOOL) canBecomeFirstResponder
{
    return YES;
}

@end
