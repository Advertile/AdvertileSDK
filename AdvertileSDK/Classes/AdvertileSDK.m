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






+(void)trackOpenEvent:(BOOL)isRelease{
    if(isRelease){
        [ABTracker trackOpenEvent];
    } else {
        [ABTracker trackOpenEventStaging];
    }
}

+(void)openUrl:(NSString*)urlToOpen{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlToOpen]];
}

+(void)managePetitionWhenOpenFromOtherApp:(NSDictionary*)infoDic{

}

#pragma mark - Swrve methods

+(void)activeSwrveWithId:(int)swrveId andApiKey:(NSString*)apiKey{
    SwrveConfig* config = [[SwrveConfig alloc] init];
    config.selectedStack = SWRVE_STACK_EU;
    config.pushEnabled = YES;
    config.pushNotificationEvents = nil;
    [Swrve sharedInstanceWithAppID:swrveId apiKey:apiKey config:config launchOptions:nil];
    [[Swrve sharedInstance] event:@"Swrve.push_notification_permission"];
    
}
+(void)registeriOSTokenInSwrve:(NSString*)iOSToken{
    NSString *token = [iOSToken stringByTrimmingCharactersInSet: [NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    token = [token stringByReplacingOccurrencesOfString:@" " withString:@""];
    [[Swrve sharedInstance] userUpdate:@{ @"ios_token" : token } ];
}

+(NSString*)swrveUserId{
    SwrveConfig* config = [[SwrveConfig alloc] init];
    return config.userId;
}

+(void)swrvePushNotificationReceived:(NSDictionary*)userInfo{
    [[Swrve sharedInstance].talk pushNotificationReceived:userInfo];
}

@end
