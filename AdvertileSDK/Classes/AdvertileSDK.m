//
//  AdvertileSDK.m
//  Pods
//
//  Created by Javier Peigneux on 29/8/16.
//
//

#import "AdvertileSDK.h"
#import "swrve.h"
#import "ABTracker.h"

@implementation AdvertileSDK


+(void)log:(NSString*)text{
    NSLog(@"%@", text);
}


+(void)activeSwreWithId:(NSString*)swreId andApiKey:(NSString*)apiKey{
    SwrveConfig* config = [[SwrveConfig alloc] init];
    config.selectedStack = SWRVE_STACK_EU;
    config.pushEnabled = YES;
    config.pushNotificationEvents = nil;
    [Swrve sharedInstanceWithAppID:swreId apiKey:apiKey config:config launchOptions:nil];
    
}


+(void)trackOpenEvent{
    [ABTracker trackOpenEvent];
}

+(void)openUrl:(NSString*)urlToOpen{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlToOpen]];
}

+(void)managePetitionWhenOpenFromOtherApp:(NSDictionary*)infoDic{

}

@end
