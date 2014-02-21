## CopyLabel: UILabel on steroids
This version of CopyLabel adds additional functionality to zoul's [original repo][5]:

* The code uses ARC. If you're using this code in a non-ARC project, make sure to add `-fobjc-arc` to the compiler flags of CopyLabel.m
* When `highlightedTextColor` is set, the entire label highlights when the menu is visible
* By default, the label copies its text to the clipboard. However, you can set a custom copy action by calling `- (void)setTarget:(id)target forCopyAction:(SEL)action;`. This functionality is demonstrated in the sample project.

## Original Readme by [zoul][4]
This is a simple project demonstrating how you can display the system
pasteboard menu on a regular `UILabel`. The interesting code is in the
[`CopyLabel.m`][1] class. Originally motivated by [this question][2]
on Stack Overflow. Released to public domain under the [CC0 license][3].

[1]: https://github.com/zhbrass/UILabel-Clipboard/blob/master/Classes/CopyLabel.m
[2]: http://stackoverflow.com/questions/1246198
[3]: http://creativecommons.org/publicdomain/zero/1.0/legalcode
[4]: https://github.com/zoul
[5]: https://github.com/zoul/UILabel-Clipboard-Sample