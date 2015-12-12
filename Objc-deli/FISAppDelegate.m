//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString*)stringWithDeliLine:(NSArray*)deliLine;
{
    NSString *deliCurrentStatus;

    if ([deliLine count] == 0) {
        deliCurrentStatus = [NSString stringWithFormat:@"The line is currently empty."];
    } else {
        deliCurrentStatus = @"The line is:";
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger deliLineNumber = i + 1;
            NSString *customerQuery= [NSString stringWithFormat:@"\n%lu. %@",deliLineNumber,deliLine[i]];
            deliCurrentStatus = [deliCurrentStatus stringByAppendingString:customerQuery];
        }
    }
    return deliCurrentStatus;
}

- (void)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine;
{
    [deliLine addObject: name];
}

- (NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine;
{
    NSString* firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}
@end
