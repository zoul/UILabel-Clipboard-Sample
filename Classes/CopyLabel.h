@interface CopyLabel : UILabel {
    
}
@property (copy, nonatomic) void (^customCopy)(UILabel *sender);


@end