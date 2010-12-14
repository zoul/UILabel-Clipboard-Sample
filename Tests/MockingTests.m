#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>

@interface MockingTests : SenTestCase {}
@end

@implementation MockingTests

- (void) testMocking
{
    id mock = [OCMockObject mockForClass:[NSObject class]];
    STAssertNotNil(mock, @"Can create object mocks using OCMock.");
}

@end
