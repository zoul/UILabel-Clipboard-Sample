#import <SenTestingKit/SenTestingKit.h>

@interface AssertionTests : SenTestCase {}
@end

@implementation AssertionTests

#if BUILD_MODE_DEBUG

- (void) testThatAssertionsWork
{
    @try {
        NSAssert(0, @"Failed assertion.");
        STFail(@"Assertions should work in debug build.");
    }
    @catch (NSException * e) {}
    @finally {}
}

#endif

#if BUILD_MODE_RELEASE

- (void) testThatAssertionsAreOff
{
    @try {
        NSAssert(0, @"Failed assertion.");
    }
    @catch (NSException * e) {
        STFail(@"Assertions should be compiled out in release build.");
    }
    @finally {}
}

#endif

@end
