//
//  ViewController.m
//  Copy
//
//  Created by Zachary Brass on 4/15/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    __weak ViewController *this = self;
    [customCopyTextLabel setCustomCopy:^(UILabel *sender) {
        [this customCopy:sender];
    }];
    customCopyTextLabel.highlightedTextColor = [UIColor blueColor];
    copyTextLabel.highlightedTextColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)customCopy:(id)sender{
    [[UIPasteboard generalPasteboard] setString:@"Check out this custom copy text"];
}
@end
