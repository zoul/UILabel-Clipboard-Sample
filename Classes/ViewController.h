//
//  ViewController.h
//  Copy
//
//  Created by Zachary Brass on 4/15/13.
//
//

#import <UIKit/UIKit.h>
#import "CopyLabel.h"
@interface ViewController : UIViewController{
    //This label will copy its own text contents to the clipboard
    IBOutlet CopyLabel *copyTextLabel;
    
    //This label will fire a custom event, and copy a custom string to the clipboard
    IBOutlet CopyLabel *customCopyTextLabel;
}
- (void)customCopy:(id)sender;
@end
